# Storing ECR URL in Parameter Store

resource "aws_ssm_parameter" "ecr_repo_url" {
  name  = "/app/ecr_repo_url"
  type  = "String"
  value = aws_ecr_repository.nodejs_ecr_repository.repository_url
}
