resource "aws_lb_target_group" "main" {
  name     = "${var.env}-${var.project_name}-tg"
  vpc_id   = var.vpc_id
  port     = 8000
  protocol = "HTTP"
  health_check {
    path = "/health"
  }
}
