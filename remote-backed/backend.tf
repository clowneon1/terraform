
terraform {
  backend "s3" {
    bucket = "tf-buc"
    key    = "kplabs/terraform.tfstate"
    region = "ap-south-1"
  }
}

#create a s3 bucket when using this config
