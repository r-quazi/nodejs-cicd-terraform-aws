# ecs service .tf

resource "aws_ecs_service" "ecs_service" {
  name            = "${var.ecs_service_name}"    
  cluster         = "${aws_ecs_cluster.ecs_cluster.id}"   
  task_definition = "${aws_ecs_task_definition.ecs_task.arn}" 
  launch_type     = "FARGATE"
  desired_count   = 1

  load_balancer {
    target_group_arn = "${aws_lb_target_group.target_group.arn}" 
    container_name   = "${var.ecs_task_name }"
    container_port   = 5000 
  }

  network_configuration {
    subnets = [
      data.terraform_remote_state.base_infra.outputs.default_subnet_a_id,
      data.terraform_remote_state.base_infra.outputs.default_subnet_b_id
    ]
    assign_public_ip = true    
    security_groups  = ["${aws_security_group.service_security_group.id}"]
  }
}