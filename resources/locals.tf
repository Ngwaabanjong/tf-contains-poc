locals {
    env_region_map = {
        "dev"  = ["us-east-1", "us-west-2"]
        "stage"  = ["us-east-1", "us-west-2"]
        "prod" = ["us-east-1", "us-west-2"]
    }
    # Check if the region exists for the given environment
    is_valid_region = contains(local.env_region_map[var.environment], var.region)

    # Select default region based on environment if the region is invalid
    default_region = var.environment == "dev" ? "us-east-1" : "us-west-2"

    # Final region to use
    selected_region = local.is_valid_region ? var.region : local.default_region


    region = var.region
    allow_ecr = lookup({
        dev = 1
        stage = 1
        prod = 1
    }, var.environment, 0)
    domain = "sandbox-x-infra-poc"
    shortdomain ="x-infra-poc"
    account_id = data.aws_caller_identity.current.account_id
}