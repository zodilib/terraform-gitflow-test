# Service User creation for Metabase 

This is a terraform code for creating service users for use with metabase connections.

## Installation and Pre-requisites 
Install terraform.
Please refer to provider.tf file for the exact version of terraform version.


## Usage

```bash
# Initialize Terraform
terraform init

# List the available workspace 
terraform workspace list

# Choose the appropriate workspace env
# Example 
terraform workspace select dev

# Run the terraform plan using respective env variable file and inspect the changes 
# Example 
terraform plan -var-file terraform_stage.tfvars -out terraform.out

# Run the apply
terraform apply "terraform.out"
```
