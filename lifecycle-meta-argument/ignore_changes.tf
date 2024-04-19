# resource "aws_instance" "myec2" {
#   ami           = data.aws_ami.instance_ami.id
#   instance_type = "t2.micro"
#   lifecycle {
#     ignore_changes = [tags]
#     # ignore_changes = all this ignores all the changes to the resource
#     # meaning only creation and deletion will be performed. 
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
