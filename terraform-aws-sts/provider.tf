terraform {
  required_version = " >= 1.7.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

#here we are doing the config for assuming aws role 
provider "aws" {
  region = "ap-south-1"
  #ofc we are assuming role here
  assume_role {
    role_arn     = var.role_arn
    session_name = "terraform-test"
  }
}

# comment the role assumin config and see you should see 403
