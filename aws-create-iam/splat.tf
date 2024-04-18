resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "iam_username" {
  value = aws_iam_user.lb[*].name
}
output "arns" {
  value = aws_iam_user.lb[*].arn #that star is a splat expression
}