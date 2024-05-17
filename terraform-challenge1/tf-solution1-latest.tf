provider "aws" {
  region = "us-east-1"
}

provider "digitalocean" {}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}


resource "aws_eip" "kplabs_app_ip" {
  domain = "vpc"
}

#just remove all versioning and it will work with latest version always (wow) .
