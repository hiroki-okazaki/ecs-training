resource "aws_secretsmanager_secret_version" "main" {
  secret_id = aws_secretsmanager_secret.main.id
  secret_string = jsonencode({
    APP_ENV = "dev-ssm"
  })

  lifecycle {
    ignore_changes = [
      secret_string
    ]
  }
}
