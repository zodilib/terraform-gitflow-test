terraform {
  backend "s3" {
    bucket         = "xxx"
    key            = "service-users/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "xxx"
  }
}
