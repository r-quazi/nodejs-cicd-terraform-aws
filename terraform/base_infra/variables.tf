############# provider.tf vars ################# 

variable "region" {
    default     = "us-east-1"    
}

############### codecommit.tf vars #################
variable "repository_name" {
  description = "The name of the CodeCommit repository"
  type        = string
  default     = "nodejs-codecommit-repo" 
}

variable "repository_description" {
  description = "Description for the CodeCommit repository"
  type        = string
  default     = "Codecommit Repository for the fullstack Node.js project"  
}



############## ecr.tf vars #################
variable "ecr_repository_name" {
  description = "The name of the ecr repository"
  type        = string
  default     = "nodejs_ecr_repository" 
}



############## networking.tf vars ################# 

variable "availability_zone_a" {
  description = "The availability zone for the first subnet."
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_b" {
  description = "The availability zone for the second subnet."
  type        = string
  default     = "us-east-1b"
}

############# CodeBuild.tf vars #################

variable "build_image" {
  description = "The build environment image for CodeBuild"
  type        = string
  default     = "aws/codebuild/standard:5.0"
}

variable "compute_type" {
  description = "The compute type for the build environment"
  type        = string
  default     = "BUILD_GENERAL1_SMALL"
}


variable "nodejs_codebuild_project_name" {
    default = "nodejs_codebuild"
    type = string
    description = "The name for the CodeBuild project"
}

variable "nodejs_codebuild_project_description" {
  description = "The description for the CodeBuild project"
  default = "CodeBuild project for Node.js application"
  type = string
}


