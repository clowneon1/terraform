resource "aws_instance" "server_from_module" {
    ami = var.image_ami
    instance_type = "t2.micro"
    security_groups = [ "launch-wizard-1"]
    tags = {
      Name = "server-from-module"
    }
}