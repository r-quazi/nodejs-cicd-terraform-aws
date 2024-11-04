#codecommmit.tf

resource "aws_codecommit_repository" "nodejs_codecommit_repository" {
  repository_name = var.repository_name
  description     = var.repository_description
}