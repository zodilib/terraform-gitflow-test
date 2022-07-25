terraform {
  backend "s3" {
    bucket         = "do-not-delete-data-terraform-state-backend"
    key            = "service-users/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "data_terraform_state"
    #profile = "data-dev"
  }
}
