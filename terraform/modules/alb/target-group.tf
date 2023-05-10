resource "aws_lb_target_group" "main" {
  name        = "${var.env}-${var.project_name}-tg"
  vpc_id      = var.vpc_id
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  health_check {
    path = "/"
  }
}
