module "alb" {
  source             = "../../modules/alb"
  env                = local.env
  project_name       = local.project_name
  vpc_id             = module.network.vpc.id
  vpc_cidr_block     = module.network.vpc.cidr_block
  subnet_public_a_id = module.network.subnet_public_a.id
  subnet_public_c_id = module.network.subnet_public_c.id
}

module "ecr" {
  source       = "../../modules/ecr"
  env          = local.env
  project_name = local.project_name
}

data "aws_caller_identity" "main" {}

module "ecs" {
  source                = "../../modules/ecs"
  env                   = local.env
  project_name          = local.project_name
  vpc_id                = module.network.vpc.id
  subnet_service_a_id   = module.network.subnet_service_a.id
  subnet_service_c_id   = module.network.subnet_service_c.id
  desired_count         = 0
  target_group_arn      = module.alb.target_group_arn
  alb_security_group_id = module.alb.security_group_id
  ecr_arn               = module.ecr.repository_arn
  ecr_url               = module.ecr.repository_url
  api_image_tag         = "v13"
  task_revision         = "32"
  secretsmanager_arn    = module.secret-manager.this.arn
}

module "network" {
  source                      = "../../modules/network"
  env                         = local.env
  project_name                = local.project_name
  region                      = "ap-northeast-1"
  vpc_cidr_block              = "10.0.0.0/16"
  subnet_public_a_cidr_block  = "10.0.0.0/24"
  subnet_service_a_cidr_block = "10.0.1.0/24"
  subnet_private_a_cidr_block = "10.0.2.0/24"
  subnet_public_c_cidr_block  = "10.0.3.0/24"
  subnet_service_c_cidr_block = "10.0.4.0/24"
  subnet_private_c_cidr_block = "10.0.5.0/24"
}

module "secret-manager" {
  source       = "../../modules/secrets-manager"
  env          = local.env
  project_name = local.project_name
}
