
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

module "alb" {
  source             = "../../modules/alb"
  env                = local.env
  project_name       = local.project_name
  vpc_id             = module.network.vpc.id
  vpc_cidr_block     = module.network.vpc.cidr_block
  subnet_public_a_id = module.network.subnet_public_a.id
  subnet_public_c_id = module.network.subnet_public_c.id
}
