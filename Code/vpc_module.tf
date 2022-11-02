module "my_vpc" { # module are attained from terraform website which give an example of the code which can be edited to desired prefrance
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  # VPC Basic Details
  name                = "${local.name}-${var.vpc_name}"
  cidr                = var.vpc_cidr_block  
  azs                 = var.vpc_availability_zones
  private_subnets     = var.vpc_public_subnets
  public_subnets      = var.vpc_private_subnets

  # Database for the subnets
# Database Subnets
  database_subnets                   = var.vpc_database_subnets
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

}