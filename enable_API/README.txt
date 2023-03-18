gcloud auth login
gcloud config set project project_id

# create git repo 
# git config --global user.email ""                          
# git config --global user.name ""
# git clone repo_name

# If you use Service Account: create SA in Console, grant necessary permission, create SA key, save on disk, 
# export GOOGLE_APPLICATION_CREDENTIALS="path to the sa key"
# gcloud auth application-default login

terraform init
 # add module to the main.tf and run "terraform init" again
gcloud auth application-default login

