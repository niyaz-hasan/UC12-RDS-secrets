module "vpc" {
  source = "./modules/vpc"
  name           = var.name
  vpc_cidr_block = var.vpc_cidr_block
}

module "sg_group" {
  source     = "./modules/sg_group"
  vpc_id     = module.vpc.vpc_id
}

module "rds" {
  source               = "./modules/rds"
  name                 = var.name
  private_subnets      = module.vpc.private_subnets
  db_username          = var.db_username
  rds_security_group_ids  = [module.sg_group.rds_security_group_id]
}
