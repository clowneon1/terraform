resource "aws_eip" "lb" {
  instance = aws_instance.serverbyt.id
  domain   = "vpc"
}

output "eip_addr" {
  value = aws_eip.lb.public_ip
}
