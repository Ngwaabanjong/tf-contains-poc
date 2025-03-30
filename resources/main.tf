#configure aws profider
provider "aws" {
  profile = "default"
  region  = local.selected_region
}

resource "null_resource" "validate_region" {
  count = local.is_valid_region ? 0 : 1

  provisioner "local-exec" {
    command = "echo Invalid region ${var.region} for environment ${var.environment} && exit 1"
  }
}

data "aws_caller_identity" "current" {}

#create vpc
module "vpc" {
  source                       = "../modules/vpc"
  environment    = var.environment
  region_ip_map  = var.region_ip_map
  region         = var.region
  project_name   = var.project_name
}

#create security group
module "security_group" {
  source                     = "../modules/sg"
  project_name               = module.vpc.project_name
  vpc_id                     = module.vpc.vpc_id
}