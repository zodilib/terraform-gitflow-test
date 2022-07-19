module "aws-iam-service-user" {

    source = "./modules/aws-iam-service-users"

    usernames = var.usernames
    bucket_1  = var.bucket_1
    athena_bucket = var.athena_bucket
    aws_region  = var.aws_region
    env = var.env  
}