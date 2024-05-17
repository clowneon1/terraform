resource "aws_iam_user" "iam" {
  name = "admin-user-${data.aws_caller_identity.current.account_id}"
  path = "/system/"
}

#this was mostly related to finding appropriate data source blocks
# this is for getting information about caller identity
data "aws_caller_identity" "current" {

}

# this is for getting information about iam users
data "aws_iam_users" "iam_users" {

}

#self explainatory
output "total_iam_users" {
  value = length(data.aws_iam_users.iam_users.names)
}

output "all_iam_user" {
  value = data.aws_iam_users.iam_users.names
}
