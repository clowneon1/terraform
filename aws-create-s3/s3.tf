resource "aws_s3_bucket" "s3_bucket" {
  bucket        = "tf-buc"
  force_destroy = true
  tags = {
    name = "terraform bucket"
    env  = "dev"
  }
}
