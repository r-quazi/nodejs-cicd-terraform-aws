

#ecr.tf


resource "aws_ecr_repository" "nodejs_ecr_repository"{
  name = var.ecr_repository_name
}
