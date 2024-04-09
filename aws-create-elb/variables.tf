variable "elb_name" {
  type    = string
  default = "terraform-elb"
}

variable "availability_zones" {
  type    = list 
#   default = ["ap-south-2a", "ap-south-2b", "ap-south-2c"]
#   ["ap-south-2a", "ap-south-2b", "ap-south-2c"]
}

variable "timeout" {
  type    = number
  default = 400
}