#Security Group for Private EC2 intance
module "my_private_SG" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.1"

  name        = "my_private_sg"
  description = "Security group with HTTP & SSH ports open for entire VPC block (IPv4 CIDR), egress to all" # VPC block = 10.0.0/16
  vpc_id      = module.my_vpc.vpc_id 

  # Ingress Rules & CIDR blocks
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.my_vpc.vpc_cidr_block] # copied it from the outputs .tf 

  # Egress Rules
  egress_rules = ["all-all"]
  tags = local.common_tags 
}