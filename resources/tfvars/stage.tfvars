environment = "prod"

# Define region and IPs for dev
region_ip_map = {
  "us-east-1" = {
    vpc_cidr                     = "10.3.0.0/16"
    public_subnet_az1_cidr       = "10.3.0.0/24"
    public_subnet_az2_cidr       = "10.3.1.0/24"
    private_app_subnet_az1_cidr  = "10.3.2.0/24"
    private_app_subnet_az2_cidr  = "10.3.3.0/24"
    private_data_subnet_az1_cidr = "10.3.4.0/24"
    private_data_subnet_az2_cidr = "10.3.5.0/24"
  }
  "us-west-2" = {
    vpc_cidr                     = "10.4.0.0/16"
    public_subnet_az1_cidr       = "10.4.0.0/24"
    public_subnet_az2_cidr       = "10.4.1.0/24"
    private_app_subnet_az1_cidr  = "10.4.2.0/24"
    private_app_subnet_az2_cidr  = "10.4.3.0/24"
    private_data_subnet_az1_cidr = "10.4.4.0/24"
    private_data_subnet_az2_cidr = "10.4.5.0/24"
  }
}

# Default region for dev
region = "us-east-1"

# Project name for tagging
project_name = "x-poc"
