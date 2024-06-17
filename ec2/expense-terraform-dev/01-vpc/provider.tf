terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }
  backend "s3" {
    bucket = "ramani280791-remote-state"
    key    = "expense-dev-vpc"
    region = "us-east-1"
    dynamodb_table = "ramani280791-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}