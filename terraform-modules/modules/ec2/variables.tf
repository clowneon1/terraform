variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "image_ami" {
  default = "ami-0187337106779cdf8" #variable defaults is used if no specific value is defined in .tfvars file
  type    = string
}
