resource "aws_instance" "serverbyt" {
  ami           = var.image_ami
  # instance_type = var.instance_type_list[count.index]
  instance_type = var.instance_type_list[0]
  # instance_type = var.list[0]

  tags = {
    name = "serverbyt-${var.instance_type_list[count.index]}"
  }
  # this will create 2 ec2 instances 
  count = 2 #count starts from 0, terraform specific command.
}

