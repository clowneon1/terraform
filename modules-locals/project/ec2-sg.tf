module "ec2SecurityGroup" {
  source = "../modules/security-group"
#   app_port = "22" you can access the vairables in the  calling module like this

}


resource "aws_instance" "web" {
  ami = "ami-0187337106779cdf8"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ module.ec2SecurityGroup.ec2_security_id ] 
  # referencing the output of our security group module
  # associate with our security group
} 

output "sg_id" {
  value = module.ec2SecurityGroup.ec2_security_id
}
# if we want to see the output in console for module outputs we have to define it
# where we are using the module