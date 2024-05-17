terraform {
  required_version = " >= 1.7.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }

  # this is one way(new way) of doing it
  # make sure to configute the terraform token using terraform login command
  # also create the appropriate org and workspace

  cloud {
    organization = "remote-org"

    workspaces {
      name = "remote-ops"
    }
  }


}



provider "aws" {
  region = "ap-south-1"
  # region = "us-east-1"
}
