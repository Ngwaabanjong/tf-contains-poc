environment = "prod"

# Define region and IPs for dev
region_ip_map = {
  "us-east-1" = {
    vpc_cidr                     = "10.5.0.0/16"
    public_subnet_az1_cidr       = "10.5.0.0/24"
    public_subnet_az2_cidr       = "10.5.1.0/24"
    private_app_subnet_az1_cidr  = "10.5.2.0/24"
    private_app_subnet_az2_cidr  = "10.5.3.0/24"
    private_data_subnet_az1_cidr = "10.5.4.0/24"
    private_data_subnet_az2_cidr = "10.5.5.0/24"
  }
  "us-west-2" = {
    vpc_cidr                     = "10.6.0.0/16"
    public_subnet_az1_cidr       = "10.6.0.0/24"
    public_subnet_az2_cidr       = "10.6.1.0/24"
    private_app_subnet_az1_cidr  = "10.6.2.0/24"
    private_app_subnet_az2_cidr  = "10.6.3.0/24"
    private_data_subnet_az1_cidr = "10.6.4.0/24"
    private_data_subnet_az2_cidr = "10.6.5.0/24"
  }
}

# Default region for dev
region = "us-east-1"

# Project name for tagging
project_name = "x-poc"
