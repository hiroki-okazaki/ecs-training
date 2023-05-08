# resource "aws_lb_listener" "https" {
#   load_balancer_arn = aws_lb.main.arn
#   #   certificate_arn = var.certificate_arn

#   port     = "443"
#   protocol = "HTTPS"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.main.arn
#   }
# }

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main.arn

  port     = "80"
  protocol = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}
