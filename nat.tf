module "prod_infra_1_nat" {
  source = "../modules/nat"
  # nat_id         = module.prod_infra_1.nat.nat_id
  public-subnet1 = module.prod_infra_1.public_subnet_list_1
  igw_depends_on = module.prod_infra_1.igw
}

module "prod_infra_2_nat" {
  source = "../modules/nat"
  # nat_id         = module.prod_infra_1.nat.nat_id
  public-subnet1 = module.prod_infra_2.public_subnet_list_1
  igw_depends_on = module.prod_infra_2.igw
}