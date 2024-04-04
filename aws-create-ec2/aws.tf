resource "aws_instance" "serverbyt" {
  ami           = "ami-0187337106779cdf8"
  instance_type = "t2.micro"

  tags = {
    Name = "serverbyt"
  }
}
