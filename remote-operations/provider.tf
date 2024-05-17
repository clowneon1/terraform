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
