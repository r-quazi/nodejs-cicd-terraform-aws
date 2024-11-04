# alb.tf

resource "aws_alb" "application_load_balancer" {
  name               = "${var.project_name}-alb"
  load_balancer_type = "application"
  subnets = [
    data.terraform_remote_state.base_infra.outputs.default_subnet_a_id,
    data.terraform_remote_state.base_infra.outputs.default_subnet_b_id
  ]


  security_groups = ["${aws_security_group.load_balancer_security_group.id}"]
}



resource "aws_lb_target_group" "target_group" {
  name        = "target-group"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = data.terraform_remote_state.base_infra.outputs.default_vpc_id
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = "${aws_alb.application_load_balancer.arn}"
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.target_group.arn}"
  }
}
