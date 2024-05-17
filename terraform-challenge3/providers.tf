terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

## given the provider and a map of ec2 instance configs
## create ec2 instances also if i change map it should reflect in the changes.check "name" 
