variable "env" {
  type = string
}

variable "project_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_service_a_id" {
  type = string
}

variable "subnet_service_c_id" {
  type = string
}

variable "desired_count" {
  type = number
}

variable "target_group_arn" {
  type = string
}

variable "alb_security_group_id" {
  type = string
}

variable "ecr_arn" {
  type = string
}

variable "ecr_url" {
  type = string
}

variable "api_image_tag" {
  type = string
}

variable "task_revision" {
  type = string
}

variable "secretsmanager_arn" {
  type = string
}
