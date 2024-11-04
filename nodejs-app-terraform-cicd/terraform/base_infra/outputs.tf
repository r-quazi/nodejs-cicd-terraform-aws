################ CODE COMMIT OUTPUTS ###############

output "codecommit_repository_name" {
  value = aws_codecommit_repository.nodejs_codecommit_repository.repository_name
  description = "The name of the CodeCommit repository."
}

output "codecommit_repository_arn" {
  value = aws_codecommit_repository.nodejs_codecommit_repository.arn
  description = "The ARN of the CodeCommit repository."
}

output "codecommit_repository_id" {
  value = aws_codecommit_repository.nodejs_codecommit_repository.id
  description = "The unique identifier of the CodeCommit repository."
}

output "codecommit_repository_http_url" {
  value = aws_codecommit_repository.nodejs_codecommit_repository.clone_url_http
  description = "The HTTP clone URL of the CodeCommit repository."
}

output "codecommit_repository_ssh_url" {
  value = aws_codecommit_repository.nodejs_codecommit_repository.clone_url_ssh
  description = "The SSH clone URL of the CodeCommit repository."
}

output "codecommit_repository_description" {
  value = aws_codecommit_repository.nodejs_codecommit_repository.description
  description = "The description of the CodeCommit repository."
}


###########  END OF CODE COMMIT OUTPUTS ################



########### ECR OUTPUTS ##################

output "ecr_repository_name" {
  value = aws_ecr_repository.nodejs_ecr_repository.name
  description = "The name of the ECR repository."
}

output "ecr_repository_arn" {
  value = aws_ecr_repository.nodejs_ecr_repository.arn
  description = "The ARN of the ECR repository."
}

output "ecr_repository_uri" {
  value = aws_ecr_repository.nodejs_ecr_repository.repository_url
  description = "The URI of the ECR repository for use in Docker commands."
}

output "ecr_repository_id" {
  value = aws_ecr_repository.nodejs_ecr_repository.id
  description = "The unique identifier of the ECR repository."
}

output "ecr_repository_image_tag_mutability" {
  value = aws_ecr_repository.nodejs_ecr_repository.image_tag_mutability
  description = "Specifies whether image tags can be overwritten."
}




############## END OF ECR OUTPUTS ############## 



############# CODE BUILD OUTPUTS #################


output "codebuild_project_name" {
  value = aws_codebuild_project.nodejs_codebuild_project.name
  description = "The name of the CodeBuild project."
}

output "codebuild_project_arn" {
  value = aws_codebuild_project.nodejs_codebuild_project.arn
  description = "The ARN of the CodeBuild project."
}

output "codebuild_project_id" {
  value = aws_codebuild_project.nodejs_codebuild_project.id
  description = "The ID of the CodeBuild project."
}

output "codebuild_project_service_role" {
  value = aws_codebuild_project.nodejs_codebuild_project.service_role
  description = "The IAM role associated with the CodeBuild project."
}

output "codebuild_project_source_location" {
  value = aws_codebuild_project.nodejs_codebuild_project.source[0].location
  description = "The source location of the CodeBuild project."
}

output "codebuild_project_environment" {
  value = aws_codebuild_project.nodejs_codebuild_project.environment
  description = "The environment configuration for the CodeBuild project."
}

output "codebuild_project_buildspec" {
  value = aws_codebuild_project.nodejs_codebuild_project.source[0].buildspec
  description = "The buildspec file used for the CodeBuild project."
}

output "codebuild_project_artifacts" {
  value = aws_codebuild_project.nodejs_codebuild_project.artifacts
  description = "The artifacts configuration for the CodeBuild project."
}



######## END OF CODEBUILD OUTPUTS #################################


######### NETWORKING OUTPUTS #################################################################

output "default_vpc_id" {
  value = aws_default_vpc.default_vpc.id
  description = "The ID of the default VPC."
}

output "default_vpc_cidr_block" {
  value = aws_default_vpc.default_vpc.cidr_block
  description = "The CIDR block associated with the default VPC."
}

output "default_vpc_arn" {
  value = aws_default_vpc.default_vpc.arn
  description = "The ARN of the default VPC."
}

output "default_subnet_a_id" {
  value = aws_default_subnet.default_subnet_a.id
  description = "The ID of the default subnet in availability zone A."
}

output "default_subnet_a_cidr_block" {
  value = aws_default_subnet.default_subnet_a.cidr_block
  description = "The CIDR block of the default subnet in availability zone A."
}

output "default_subnet_a_availability_zone" {
  value = aws_default_subnet.default_subnet_a.availability_zone
  description = "The availability zone of the default subnet A."
}

output "default_subnet_b_id" {
  value = aws_default_subnet.default_subnet_b.id
  description = "The ID of the default subnet in availability zone B."
}

output "default_subnet_b_cidr_block" {
  value = aws_default_subnet.default_subnet_b.cidr_block
  description = "The CIDR block of the default subnet in availability zone B."
}

output "default_subnet_b_availability_zone" {
  value = aws_default_subnet.default_subnet_b.availability_zone
  description = "The availability zone of the default subnet B."
}

######### END OF NETWORKING OUTPUTS #########


###### PROVIDER OUTPUTS #########

output "aws_provider_version" {
  value       = "4.45.0"
  description = "The version of the AWS provider being used."
}

output "aws_region" {
  value       = var.region
  description = "The AWS region in which resources are being provisioned."
}


####### END OF PROVIDER OUTPUTS   ########


