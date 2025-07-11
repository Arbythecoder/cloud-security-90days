# main.tf
provider "aws" {
  region = var.aws_region
}

resource "aws_iam_user" "cloud_user" {
  name = "clouduser"
}

resource "aws_iam_group" "cloud_group" {
  name = "cloudadmins"
}

resource "aws_iam_user_group_membership" "group_membership" {
  user = aws_iam_user.cloud_user.name
  groups = [aws_iam_group.cloud_group.name]
}
