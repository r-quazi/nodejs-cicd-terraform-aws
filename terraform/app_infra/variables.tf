# app_infra/variables.tf

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}


########### ecs_cluster.tf vars #########

variable "ecs_cluster_name" {
  description = "Nam of the ecs cluster"
  type        = string
  default     = "nodejs_ecs_cluster"
}


############ ecs_service.tf vars #########

variable "ecs_service_name" {
  description = "Name of the ecs service "
  type        = string
  default     = "nodejs_ecs_service"
}

######## ecs_task.tf vars ############# 

variable "ecs_task_family_name" {
  description = "Name of the ecs task family name "
  type        = string
  default     = "nodejs_ecs_task"
}

variable "ecs_task_name" {
  description = "Name of the ecs task "
  type        = string
  default     = "nodejs_ecs_first_task"
}


###########  cidepipeline.tf vars #############

# Variables
variable "pipeline_name" {
  type    = string
  default = "nodejscodepipeline"
}