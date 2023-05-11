resource "aws_secretsmanager_secret" "main" {
  name = "${var.env}-${var.project_name}-credentials"
}
