resource "aws_ecs_cluster" "main" {
  name = "${var.env}-${var.project_name}-ecs-cluster"
}
