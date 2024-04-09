variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "image_ami" {
  default = "ami-0187337106779cdf8" #variable defaults is used if no specific value is defined in .tfvars file
  type    = string
}

variable "list" {
  type    = list(string)
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "instance_types" {
  type = map(any)
  default = {
    micro = "t2.micro"
    nano  = "t2.nano"
    small = "t2.small"
  }
}

#create terraform.tfvars and use it to define the values