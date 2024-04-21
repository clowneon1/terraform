resource "aws_instance" "server_from_module" {
    ami = "ami-0187337106779cdf8" # not making it variable so that person using the module can't change it
    instance_type = var.instance_type
    security_groups = [ "launch-wizard-1"]
    tags = {
      Name = "server-from-module"
    }
}

# using variables lets you change the configuration as where 
# we are using the module we have no control over the module configurations.