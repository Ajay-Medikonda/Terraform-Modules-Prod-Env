module "prod_infra_1_iam" {
  source              = "../modules/iam"
  environment         = module.prod_infra_1.environment
  rolename            = "ajayrole"
  instanceprofilename = "ajayprofile"
  iam_policy_name     = "ajayiampolicy"
}

module "prod_infra_2_iam" {
  source              = "../modules/iam"
  environment         = module.prod_infra_2.environment
  rolename            = "ajayrole"
  instanceprofilename = "ajayprofile"
  iam_policy_name     = "ajayiampolicy"
}