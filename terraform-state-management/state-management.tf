resource "aws_instance" "webapp" {
  ami           = var.image_ami
  instance_type = "t2.micro"
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}

terraform {
  backend "s3" {
    bucket = "tf-buc"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
