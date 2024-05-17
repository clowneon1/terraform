# provider "aws" {
#   region = "us-east-1"
# }

# provider "digitalocean" {}

# terraform {
#   required_version = "1.8.3"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.39"
#     }
#     digitalocean = {
#       source  = "digitalocean/digitalocean"
#       version = "~> 2.0"
#     }
#   }
# }


# resource "aws_eip" "kplabs_app_ip" {
#   domain = "vpc"
# }
