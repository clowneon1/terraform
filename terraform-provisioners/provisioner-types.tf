resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Outbound Allowed"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "serverbyt" {
  ami                    = var.image_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name               = "terraform"

  provisioner "local-exec" {
    command = "echo ${aws_instance.serverbyt.private_ip} >> private_ips.txt"
  }

  provisioner "remote-exec" {
    inline = ["sudo yum -y install nano"]
  }
  provisioner "remote-exec" {
    when   = destroy
    inline = ["sudo yum -y remove nano"]
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    # private_key = file(var.private_key_path) variable won't work for destroy time we hav to give path
    private_key = file("./terraform.pem")
  }
#if this provisioner fails in creation time for some reason the resource is marked as tained.

}