terraform {
  required_version = " >= 1.7.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  # region = "us-east-1"
}


locals {
  region          = "ap-south-1"
  name            = "terraform-cluster"
  vpc_cidr        = "10.123.0.0/16"
  azs             = ["ap-south-1a", "ap-south-1b"]
  public_subnets  = ["10.123.1.0/24", "10.123.2.0/24"]
  private_subnets = ["10.123.3.0/24", "10.123.4.0/24"]
  intra_subnets   = ["10.123.5.0/24", "10.123.6.0/24"]
  tags = {
    Example = local.name
  }
}
