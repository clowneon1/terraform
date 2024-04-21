module "ec2SecurityGroup" {
  source = "../modules/security-group"
#   app_port = "22" you can access the vairables in the  calling module like this

}