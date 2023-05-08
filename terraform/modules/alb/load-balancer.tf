resource "aws_lb" "main" {
  name               = "${var.env}-${var.project_name}-alb"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.main.id]
  subnets            = [var.subnet_public_a_id, var.subnet_public_c_id]
  ip_address_type    = "ipv4"
}
