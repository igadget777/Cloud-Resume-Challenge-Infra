terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }
  required_version = "1.1.8"

  # Configure Terraform to store the state in your S3 bucket
  backend "s3" {
    region = "us-east-1"
    bucket = "terraform-state-resume-challenge"
    key    = "default/backend/terraform.tfstate"

    # dynamodb_table = "terraform-locks-resume-challenge"
    encrypt = true #ensures Terraform state will be encrypted on disk when stored in S3
  }
}
