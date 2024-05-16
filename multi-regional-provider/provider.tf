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
}

# you can use alias to create multiple provider config for same provider.
provider "aws" {
  alias   = "north-virginia"
  region  = "us-east-1"
  profile = "prod-account"
  # additionally you can use profile config to set diffrent aws profiles (accounts) for diffrent configurations
}
