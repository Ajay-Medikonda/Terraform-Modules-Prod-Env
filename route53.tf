module "prod_infra_1_route53" {
  source     = "../modules/route53"
  domainname = "awstelugu.xyz"
  nlb_id     = module.prod_infra_1_nlb.nlb_id
  dns_name   = module.prod_infra_1_nlb.nlb_dns_name
  zone_id    = module.prod_infra_1_nlb.nlb_zone_id
}

module "prod_infra_2_route53" {
  source     = "../modules/route53"
  domainname = "awstelugu.xyz"
  nlb_id     = module.prod_infra_2_nlb.nlb_id
  dns_name   = module.prod_infra_2_nlb.nlb_dns_name
  zone_id    = module.prod_infra_2_nlb.nlb_zone_id
}
