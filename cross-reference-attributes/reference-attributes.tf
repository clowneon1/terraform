resource "aws_eip" "terraform-eip" {
  domain = "vpc"
}

resource "aws_security_group" "terraform-sg" {
  name        = "allow-tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    protocol    = "tcp"
    from_port   = 443
    to_port     = 443
    # cidr_blocks = [aws_eip.terraform-eip.public_ip]
    cidr_blocks = ["${aws_eip.terraform-eip.public_ip}/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}