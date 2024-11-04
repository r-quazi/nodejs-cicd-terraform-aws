# ecs task definition.tf

resource "aws_ecs_task_definition" "ecs_task" {
  family                   = var.ecs_task_family_name
  container_definitions    = <<DEFINITION
  [
    {
      "name": "${var.ecs_task_name}",
      "image" : "${local.ecr_repository_uri}:latest",
      "essential": true,
      "portMappings": [
        {
          "containerPort": 5000,
          "hostPort": 5000
        }
      ],
      "memory": 512,
      "cpu": 256
    }
  ]
  DEFINITION
  requires_compatibilities = ["FARGATE"] 
  network_mode             = "awsvpc"    
  memory                   = 512         
  cpu                      = 256         
  execution_role_arn       = "${aws_iam_role.ecsTaskExecutionRole.arn}"
}