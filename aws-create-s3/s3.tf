resource "aws_s3_bucket" "s3_bucket" {
  bucket = "tf-buc"
  tags = {
    name = "terraform bucket"
    env  = "dev"
  }
}
