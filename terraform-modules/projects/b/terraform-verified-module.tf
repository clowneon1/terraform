module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = var.instance_type
  ami = var.image_ami 
  vpc_security_group_ids = [var.vpc_id]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}