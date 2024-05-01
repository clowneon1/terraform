resource "aws_instance" "myec2" {
  ami = var.image_ami
  instance_type = lookup(var.instance_type,terraform.workspace,"t2.micro")
}

# What we will be doing 
# default workspace instance_type = "t2.nano"
# dev workspace instance_type = "t2.micro"
# prod workspace instance_type = "t2.large"