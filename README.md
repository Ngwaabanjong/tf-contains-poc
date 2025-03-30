### Contribution guidelines ###
* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###
* Repo owner 

## Definition
- This configuration will deploy your infrastructure on different regions while using the same template.
- Each workspace will use the same statefile for different regions. 
- This is a demo to demonstrate contains function.

## Prerequisite
- Change the s3 bucket to yours.
- Run CMDs on resources directory.

## Using contain function for multi region
- set region dynamically in locals.tf
- configure provider to use selected region in provider.tf

## Make sure your on the right workspace (dev, stage. prod)
- Inintialize and create workspace as required.
```
terraform init --backend-config=../config/dev.conf
terraform workspace list
terraform workspace new dev
terraform workspace select dev
```

## Plan & Apply
- When running terraform plan or apply, pass the environment and region dynamically.
```
# Plan for dev in us-east-1
terraform plan -var-file=tfvars/dev.tfvars -var="region=us-east-1"
terraform apply -var-file=tfvars/dev.tfvars -var="region=us-east-1"

# Apply for dev in us-west-2
terraform plan -var-file=tfvars/dev.tfvars -var="region=us-west-2"
terraform apply -var-file=tfvars/dev.tfvars -var="region=us-west-2"
```

## Troubleshooting
TF_LOG=DEBUG terraform plan -var-file=tfvars/dev.tfvars
