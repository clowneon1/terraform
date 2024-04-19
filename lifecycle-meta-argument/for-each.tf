resource "aws_iam_user" "iam" {
#   name = var.iam_names[count.index]
#   count = 4 #only useful for replicas (identical config)
#   for each is better than count 
    for_each = toset(var.iam_names)
    name = each.key
    path = "/system/"
}

#example for ec2

resource "aws_instance" "serverbyt" {
  ami = var.image_ami
  for_each = {
    key1 = "t2.micro"
    key2 = "t2.nano"
  }
  instance_type = each.value
  key_name = each.key
  tags = {
    Name = each.value
  }
}