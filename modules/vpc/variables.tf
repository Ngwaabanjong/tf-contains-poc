
variable "environment" {
  description = "The environment to deploy to (dev or prod)"
  type        = string
}

variable "region" {
  description = "The region to deploy to"
  type        = string
}

variable "region_ip_map" {
  description = "Mapping of regions to IP configurations"
  type        = map(object({
    vpc_cidr                     = string
    public_subnet_az1_cidr       = string
    public_subnet_az2_cidr       = string
    private_app_subnet_az1_cidr  = string
    private_app_subnet_az2_cidr  = string
    private_data_subnet_az1_cidr = string
    private_data_subnet_az2_cidr = string
  }))
}

variable "project_name" {
  description = "The project name for tagging"
  type        = string
}


