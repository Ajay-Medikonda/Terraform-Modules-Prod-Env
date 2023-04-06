module "prod_infra_1_ec2" {
  source               = "../modules/ec2"
  environment          = module.prod_infra_1.environment
  imagename            = "ami-0778521d914d23bc1"
  instance_type        = "t2.nano"
  key_name             = "Green_Key_Pair"
  sg                   = module.prod_infra_1_sg.sg
  vpc_name             = module.prod_infra_1.vpc_name
  public-subnets       = module.prod_infra_1.public_subnet_list
  private-subnets      = module.prod_infra_1.private_subnet_list
  ngw_depends_on       = module.prod_infra_1_nat.nat_id
  iam_instance_profile = module.prod_infra_1_iam.instprofile
}

module "prod_infra_2_ec2" {
  source               = "../modules/ec2"
  environment          = module.prod_infra_2.environment
  imagename            = "ami-0778521d914d23bc1"
  instance_type        = "t2.nano"
  key_name             = "Green_Key_Pair"
  sg                   = module.prod_infra_2_sg.sg
  vpc_name             = module.prod_infra_2.vpc_name
  public-subnets       = module.prod_infra_2.public_subnet_list
  private-subnets      = module.prod_infra_2.private_subnet_list
  ngw_depends_on       = module.prod_infra_2_nat.nat_id
  iam_instance_profile = module.prod_infra_2_iam.instprofile
}