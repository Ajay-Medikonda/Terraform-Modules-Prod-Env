module "prod_infra_1" {
  source              = "../Modules/vpc"
  vpc_name            = "prod_infra_1_vpc"
  cidr_block          = "172.10.0.0/16"
  environment         = "production"
  public_subnet_cidr  = ["172.10.1.0/24", "172.10.2.0/24", "172.10.3.0/24"]
  private_subnet_cidr = ["172.10.10.0/24", "172.10.20.0/24", "172.10.30.0/24"]
  azs                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
  region              = "us-east-1"
  nat_id              = module.prod_infra_1_nat.nat_id
}


module "prod_infra_2" {
  source              = "../Modules/vpc"
  vpc_name            = "prod_infra_2_vpc"
  cidr_block          = "172.30.0.0/16"
  environment         = "production"
  public_subnet_cidr  = ["172.30.1.0/24", "172.30.2.0/24", "172.30.3.0/24"]
  private_subnet_cidr = ["172.30.10.0/24", "172.30.20.0/24", "172.30.30.0/24"]
  azs                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
  region              = "us-east-1"
  nat_id              = module.prod_infra_2_nat.nat_id
}
