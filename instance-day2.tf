resource "google_compute_instance" "default" {
  name         = "nginx-terraform"
  machine_type = "n1-standard-1"
  zone         = var.zone
  description  = "day 2 vm instance"


  boot_disk {
    initialize_params {
      size  = "35"
      image = "centos-7"
      type  = "pd-ssd"
    }
  }

  tags = ["allow-http-https"]

  labels = {
    "server_type" = "nginx_server"
  }

   lifecycle {
    prevent_destroy = true
  }

  network_interface {
    network = var.network

    access_config {
      // Ephemeral public IP
    }
  }



  metadata_startup_script = file("./startup.sh")

  timeouts {
    delete = "40m"
  }

}

resource "google_compute_firewall" "http" {
  name    = "fw-rule"
  network = var.network


  allow {
    protocol = "tcp"
    ports    = ["80","8080","443"]
  }

  target_tags = ["allow-http-https"]
}

