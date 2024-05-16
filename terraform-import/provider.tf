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

#make sure to create a manual sg and paste the id here.
import {
  to = aws_security_group.mysg
  id = var.sg_id
}
