resource "aws_instance" "serverbyt" {
  ami           = var.image_ami
  instance_type = var.instance_types["micro"]
  # instance_type = var.list[0]

  tags = {
    Name = "serverbyt"
  }
}
