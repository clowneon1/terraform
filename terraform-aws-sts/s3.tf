resource "aws_s3_bucket" "s3_bucket" {
  bucket        = "tf-buc"
  force_destroy = true
  tags          = local.tags
}

locals {
  tags = {
    name = "terraform bucket"
    env  = "dev"
  }
}

output "bucket_arn" {
  value     = aws_s3_bucket.s3_bucket.arn
  sensitive = true #this will prevent the info from getting logged in console and terraform cloud
}
# the value is still in plain sight in .tfstate file though.
