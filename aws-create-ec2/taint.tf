# we can use -replace argument to reconstruct the entire thing even though nothing is changed 
# -replace="aws_inctance.serverbyt" this is the format

resource "aws_instance" "serverfortaint" {
    ami = var.image_ami
    instance_type = "t2.micro"
}