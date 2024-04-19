# resource "aws_instance" "tfserver" {
#   ami           = var.image_ami
#   instance_type = var.instance_type
#   key_name      = "terraform"

# #   security_groups = [ "launch-wizard-1" , "default" ]
#   vpc_security_group_ids = [ "sg-03040ce6c8e99ab47" ]

# connection {
#       type        = "ssh"
#       host        = self.public_ip
#       user        = "ec2-user"
#       private_key = file(var.private_key_path)
#     }
#   provisioner "remote-exec" {
#     inline = [
#       "sudo amazon-linux-extras install -y nginx1.12",
#       "sudo systemctl start nginx"
#     ]
    
#   }
# }


