terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
      # version = "=> 3.0"
      # version = "<= 3.0"
      # version = ">=3.0, <=3.2"
      # version = "3.2.74"

    }
  }
}

provider "aws" {
  region = "ap-south-1"
}