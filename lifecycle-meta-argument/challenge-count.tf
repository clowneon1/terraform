# resource "aws_iam_user" "iam" {
#   name = var.iam_names[count.index]
#   count = 4 #only useful for replicas (identical config)
#   path = "/system/"
# }