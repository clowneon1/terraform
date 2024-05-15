terraform {
  backend "s3" {
    bucket = "tf-buc"
    key    = "network/eip.tfstate"
    region = "ap-south-1"
  }
}
