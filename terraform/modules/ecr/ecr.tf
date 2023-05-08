resource "aws_ecr_repository" "main" {
  name                 = "${var.env}-${var.project_name}"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }
}
