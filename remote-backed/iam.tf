resource "aws_iam_user" "lb" {
  name  = "iamuser.${count.index}"
  count = 1
  path  = "/system/"
}
