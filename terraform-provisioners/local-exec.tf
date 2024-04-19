resource "aws_instance" "serverbyt" {
  ami = var.image_ami
  instance_type = var.instance_type

    provisioner "local-exec" {
      command = "echo ${aws_instance.serverbyt.private_ip} >> private_ips.txt"
    }

}