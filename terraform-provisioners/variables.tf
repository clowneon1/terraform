variable "image_ami" {
  default = "ami-0187337106779cdf8" #variable defaults is used if no specific value is defined in .tfvars file
  type    = string
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "private_key_path" {
  default = "./terraform.pem"
  type    = string
}