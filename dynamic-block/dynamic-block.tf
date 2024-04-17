resource "aws_security_group" "dynamicsg" {
  name        = "dynamic-sg"
  description = "Ingress for Application"

  dynamic "ingress" { 
    for_each = var.sg_ports
    iterator = port #this is like variable name
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" { 
    for_each = var.sg_ports
    content {
      from_port   = egress.value  #by default the dynamic block name is the iterator name 
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

}