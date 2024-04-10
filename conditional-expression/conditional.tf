resource "aws_instance" "dev" {
  ami           = var.image_ami
  instance_type = var.instance_types["micro"]

  # apparently we can use count this was as well.
  count = var.is_test == true ? 1 : 0
  tags  = local.common_tags
}

resource "aws_instance" "prod" {
  ami           = var.image_ami
  instance_type = var.instance_types["large"]
  count         = var.is_test == false ? 1 : 0
  tags          = local.common_tags
}

# locals (more like local variables)

locals {
  common_tags = {
    team    = "DevOps"
    service = "backend"
  }
}

# one way to use locals
# locals {
#   name_prefix = var.name != "" ? var.name : var.default
# }