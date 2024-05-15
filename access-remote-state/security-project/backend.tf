terraform {
  backend "s3" {
    bucket = "tf-buc"
    key    = "security/sg.tfstate"
    region = "ap-south-1"
  }
}
