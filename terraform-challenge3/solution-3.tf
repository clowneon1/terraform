
variable "instance_config" {
  type = map(any)
  default = {
    instance1 = { instance_type = "t2.micro", ami = "ami-0187337106779cdf8" }
    instance3 = { instance_type = "t2.micro", ami = "ami-0187337106779cdf8" }
  }
}

# one way of doing it.
# resource "aws_instance" "ec2" {
#   ami           = var.instance_config["instance${count.index + 1}"].ami
#   instance_type = var.instance_config["instance${count.index + 1}"].instance_type
#   count         = length(var.instance_config)
#   tags = {
#     Name = "server-instance${count.index + 1}"
#   }
# }

# one more way of doing it
resource "aws_instance" "ec2" {
  for_each      = var.instance_config
  instance_type = each.value.instance_type
  ami           = each.value.ami

  tags = {
    Name = "server-${each.key}"
  }
}

