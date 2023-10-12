resource  "aws_iam_user" "firstuser" {
    name = var.username
    tags = {
        Managed = "Terraform"
        Department = "Engineering"
        Description = "Creating first terraform user"
    }
}

resource "aws_iam_policy" "admin_policy" {
    name = "My_Administrators"
    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1696817750457",
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "admin_user_policy_attachment" {
    name = "Terraform user attachment"
    users = [aws_iam_user.firstuser.name]
    policy_arn = aws_iam_policy.admin_policy.arn
}