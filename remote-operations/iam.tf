resource "aws_iam_user" "lb" {
  name = "remote-user"
  path = "/system/"
}

output "iam_username" {
  value = aws_iam_user.lb.name
}
