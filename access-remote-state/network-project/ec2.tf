resource "aws_instance" "serverbyt" {
  # using data source to get the ami
  ami = data.aws_ami.instance_ami.id

  instance_type = var.instance_type

  tags = {
    name = "serverbyt"
  }
}

# this is to fing image ami in your configured region
data "aws_ami" "instance_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
