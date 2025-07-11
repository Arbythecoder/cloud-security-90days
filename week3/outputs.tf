# outputs.tf
output "iam_user_name" {
  value = aws_iam_user.cloud_user.name
}
