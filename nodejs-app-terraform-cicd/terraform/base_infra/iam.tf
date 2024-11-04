# IAM Role for CodeBuild
resource "aws_iam_role" "codebuild_role" {
  name = "codebuild_service_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "codebuild.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Attachubnf AdministratorAccess policy to the CodeBuild IAM Role
resource "aws_iam_role_policy_attachment" "codebuild_policy_admin" {
  role       = aws_iam_role.codebuild_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
