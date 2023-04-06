module "prod_infra_1_nlb" {
  source          = "../modules/nlb"
  subnets         = module.prod_infra_1.public_subnet_list
  environment     = module.prod_infra_1.environment
  nlbname         = "ajay"
  tgname          = "ajay"
  vpc_id          = module.prod_infra_1.vpc_id
  public_servers  = module.prod_infra_1_ec2.public_servers
  private_servers = module.prod_infra_1_ec2.private_servers
}

module "prod_infra_2_nlb" {
  source          = "../modules/nlb"
  subnets         = module.prod_infra_2.public_subnet_list
  environment     = module.prod_infra_2.environment
  nlbname         = "ajay"
  tgname          = "ajay"
  vpc_id          = module.prod_infra_2.vpc_id
  public_servers  = module.prod_infra_2_ec2.public_servers
  private_servers = module.prod_infra_2_ec2.private_servers
}