
module "network" {
  source                      = "../../modules/network"
  env                         = "dev"
  project_name                = "ecs-test"
  region                      = "ap-northeast-1"
  vpc_cidr_block              = "10.0.0.0/16"
  subnet_public_a_cidr_block  = "10.0.0.0/24"
  subnet_service_a_cidr_block = "10.0.1.0/24"
  subnet_private_a_cidr_block = "10.0.2.0/24"
  subnet_public_c_cidr_block  = "10.0.3.0/24"
  subnet_service_c_cidr_block = "10.0.4.0/24"
  subnet_private_c_cidr_block = "10.0.5.0/24"
}
