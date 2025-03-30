# state.tf
terraform {
  backend "s3" {
    bucket = "prj-terra-s3-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    workspace_key_prefix = "x-sandbox/x-infra-poc/resources"
  }
}
