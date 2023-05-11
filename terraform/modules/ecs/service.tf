resource "aws_ecs_service" "main" {
  name             = "${var.env}-${var.project_name}-ecs-service"
  cluster          = aws_ecs_cluster.main.id
  task_definition  = "${aws_ecs_task_definition.main.arn_without_revision}:${var.task_revision}"
  desired_count    = var.desired_count
  launch_type      = "FARGATE"
  platform_version = "1.4.0"

  deployment_minimum_healthy_percent = 50

  network_configuration {
    subnets          = [var.subnet_service_a_id, var.subnet_service_c_id]
    security_groups  = [aws_security_group.ecs.id]
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = var.target_group_arn
    container_name   = "backend-api-container"
    container_port   = 8000
  }

  enable_execute_command = true

  # lifecycle {
  #   ignore_changes = [
  #     desired_count,
  #   ]
  # }
}
