variable "iam_names" {
  type = list(string)
  default = [ "user-0", "user-1", "user-2", "user-3"]
}
variable "image_ami" {
  default = "ami-0187337106779cdf8" #variable defaults is used if no specific value is defined in .tfvars file
  type    = string
}
