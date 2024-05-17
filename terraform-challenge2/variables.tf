variable "splunk" {
  default = "8088"
}

variable "ports" {
  type    = list(string)
  default = ["443", "8080"]
}
variable "dev_ip" {
  type    = string
  default = "172.31.0.0"
}

variable "prod" {
  type    = string
  default = "8443"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "dev_api_port" {
  type    = string
  default = "8080"
}
variable "dev_http_port" {
  type    = string
  default = "443"
}
