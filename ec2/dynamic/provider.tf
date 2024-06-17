
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.0"
    }
  }
  backend "s3" {
    bucket = "ramani280791"
    key    = "remote-state-demo"
    region = "us-east-1"   
    dynamodb_table = "ramani-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}
