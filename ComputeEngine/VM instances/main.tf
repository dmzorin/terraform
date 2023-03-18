terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.39.0"
    }
  }
}

provider "google" {
  project = "terraform-associate-prep"
  region  = "us-central1"

}

resource "google_compute_instance" "vm_instance_1" {
  name         = "test-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-c"
  tags = ["nfs"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
  metadata = {
    startup-script = <<EOT
  echo "startup"
  mkdir -p /tmp/startup
    EOT
  }
}

resource "google_compute_instance" "vm_instance_2" {
  name         = "test-instance2"
  machine_type = "e2-micro"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
  metadata = {
    startup-script = <<EOT
  apt install telnet
    EOT
  }
}