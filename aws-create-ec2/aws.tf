resource "aws_instance" "serverbyt" {
  ami           = var.image_ami
  instance_type = var.instance_type

  tags = {
    Name = "serverbyt"
  }
}
