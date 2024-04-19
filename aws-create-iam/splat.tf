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

output "username_arn_map" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}

#zipmap is used to create a map from two lists.

# // /* */ these three comments can be used for this.