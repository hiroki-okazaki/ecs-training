resource "aws_ecs_task_definition" "main" {
  family                   = "${var.env}-${var.project_name}-backend-api-container"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = aws_iam_role.execution.arn
  task_role_arn            = aws_iam_role.task.arn

  container_definitions = jsonencode([
    {
      name      = "backend-api-container"
      image     = var.api_image_tag
      essential = true

      logConfiguration = {
        logDriver = "awslogs"
        options = {
          awslogs-group         = aws_cloudwatch_log_group.ecs_task.name
          awslogs-region        = "ap-northeast-1",
          awslogs-stream-prefix = "ecs",
        }
      }

      portMappings = [
        {
          containerPort = 8000
          protocol      = "tcp"
        }
      ]
    }
  ])
}

resource "aws_cloudwatch_log_group" "ecs_task" {
  name              = "/ecs/${var.env}-${var.project_name}/backend-api-container"
  retention_in_days = 30
}
