resource "aws_security_group" "ec2-sg" {
  name = "myec2-sg"

  ingress {
    # from_port   = var.app_port
    # to_port     = var.app_port
    from_port   = var.app_port
    to_port     = var.app_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}


resource "aws_security_group" "elb-sg" {
  name = "myelb-sg"

  ingress {
    from_port   = var.app_port
    to_port     = var.app_port
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]
  }

}

output "ec2_security_id" {
  value = aws_security_group.ec2-sg.id
} #output the ec2 id so that we can use it as  a reference in other resources

locals {
  app_port = 8443
}

# using variables lets you change the configuration as where 
# we are using the module we have no control over the module configurations.
# use locals insted of vairable when you want to remove repeatative config 
# but don't want the pesron using the module to be able to change it.