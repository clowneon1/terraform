resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allows TLS inbound traffic"
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    //give proper path to fetch the output value (also no spaces in cidr block)
    cidr_blocks = ["${data.terraform_remote_state.eip.outputs.eip_addr}/32"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
