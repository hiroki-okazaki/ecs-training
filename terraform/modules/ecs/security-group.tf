resource "aws_security_group" "ecs" {
  name   = "${var.env}-${var.project_name}-ecs-sg"
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.env}-${var.project_name}-ecs-sg"
  }
}

resource "aws_security_group_rule" "egress" {
  security_group_id = aws_security_group.ecs.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ingress_alb" {
  security_group_id        = aws_security_group.ecs.id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = var.alb_security_group_id
}
