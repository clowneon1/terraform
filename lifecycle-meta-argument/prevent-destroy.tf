# resource "aws_instance" "myec2" {
#   ami = data.aws_ami.instance_ami.id
#   #   ami           = "ami-007020fd9c84e18c7"
#   instance_type = "t2.micro"

#   lifecycle {
#     prevent_destroy = true
#   }
#   #This does not prevent manual deletion of resource
#   #also if you remove the entire resource block it will destroy the resource.

#   tags = {
#     Name = "TryToDestroyMe"
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
