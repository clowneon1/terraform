resource "aws_security_group" "security_group_payment_app" {
  name        = "payment_app"
  description = "Application Security Group"
  depends_on  = [aws_eip.example]

  # Below ingress allows HTTPS  from DEV VPC
  ingress {
    description = "allows HTTPS  from DEV VPC"
    from_port   = var.dev_http_port
    to_port     = var.dev_api_port
    protocol    = "tcp"
    cidr_blocks = ["${var.dev_ip}/16"]
  }

  # Below ingress allows APIs access from DEV VPC

  ingress {
    description = "allows APIs access from DEV VPC"
    from_port   = var.dev_api_port
    to_port     = var.dev_api_port
    protocol    = "tcp"
    cidr_blocks = ["${var.dev_ip}/16"]
  }

  # Below ingress allows APIs access from Prod App Public IP.

  ingress {
    description = "allows APIs access from Prod App Public IP."
    from_port   = var.prod
    to_port     = var.prod
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.example.public_ip}/32"]
  }

  egress {
    from_port   = var.splunk
    to_port     = var.splunk
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "prod-app-sg"
  }

}

resource "aws_eip" "example" {
  tags = {
    Name = "prod-eip"
  }
  domain = "vpc"
}

## make sure the code works make the obvious typos 
## then optimize the code 
## override a variable value without using any file or changing in config
