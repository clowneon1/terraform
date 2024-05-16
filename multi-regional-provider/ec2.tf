resource "aws_instance" "serverbyt-ap" {
  ami           = data.aws_ami.instance_ami_ap.id
  instance_type = "t2.micro"
  tags = {
    name = "serverbyt-ap"
  }
}

resource "aws_instance" "serverbyt-us" {
  ami           = data.aws_ami.instance_ami_ap.id
  instance_type = "t2.micro"
  tags = {
    name = "serverbyt-us"
  }
}

data "aws_ami" "instance_ami_ap" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

data "aws_ami" "instance_ami_us" {
  provider    = aws.north-virginia
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

