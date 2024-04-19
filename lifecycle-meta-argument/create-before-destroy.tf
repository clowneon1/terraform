# resource "aws_instance" "myec2" {
#   ami = data.aws_ami.instance_ami.id
#   #   ami           = "ami-007020fd9c84e18c7"
#   instance_type = "t2.micro"

#   lifecycle {
#     create_before_destroy = true
#   }

#   tags = {
#     Name = "MyEC2Instance"
#   }
# }

# data "aws_ami" "instance_ami" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm*"]
#   }
# }
