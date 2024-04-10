variable "image_ami" {
  default = "ami-0187337106779cdf8" #variable defaults is used if no specific value is defined in .tfvars file
  type    = string
}

variable "is_test" {
  type = bool
  default = true
}

variable "instance_types" {
  type = map(any)
  default = {
    micro = "t2.micro"
    large = "t2.large"
    small = "t2.small"
  }
}