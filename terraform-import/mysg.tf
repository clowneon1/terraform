# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-0e67a7093dd52d640"
resource "aws_security_group" "mysg" {
  description = "this is for the testing of terraform import"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["10.0.0.16/32"]
    description      = "Allow HTTP from internet"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "Allow HTTPS from internet"
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = ["12.3.0.4/32"]
    description      = "Allow shh from private network"
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }]
  name                   = "manual-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-06782e2baf90f737f"
}
