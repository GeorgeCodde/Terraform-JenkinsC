##################################################################################
# BACKENDS
##################################################################################
## Move this backend file to m3 when migrating state
terraform {
  backend "s3" {
    bucket = "tf-backend-50524"
    key    = "applications/terraform.tfstate"
    region = "eu-central-1"

    dynamodb_table = "tf-backend-locks-50524"
    encrypt        = true
  }
}