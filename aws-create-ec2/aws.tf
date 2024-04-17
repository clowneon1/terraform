resource "aws_instance" "serverbyt" {
  # ami           = var.image_ami
  # using data source to get the ami
  ami = data.aws_ami.instance_ami.id

  # instance_type = var.instance_type_list[count.index]
  instance_type = var.instance_types["micro"]
  # instance_type = var.list[0]

  tags = {
    name = "serverbyt-${var.instance_type_list[count.index]}"
  }
  # this will create 2 ec2 instances 
  count = 1#count starts from 0, terraform specific command.
}

data "aws_ami" "instance_ami" {
  most_recent = true
  owners = [ "amazon" ]

  filter {
    name = "name"
    values = [ "amzn2-ami-hvm*" ]
  }
}

# Environment variable TF_LOG=TRACE and TF_LOG_PATH are used for logs and storing logs