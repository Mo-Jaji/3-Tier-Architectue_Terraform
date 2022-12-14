#Security Group for Public EC2 intance

module "my_public_bastion_SG" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.1"

  name = "my_public_sg"
  description = "SG with SSH port open to everybody view (IPv4 CIDR), egress ports are open to all of the world"
  vpc_id      = module.my_vpc.vpc_id 

  # Ingress Rules & CIDR Block  
  ingress_rules = ["ssh-tcp"] #tcp = port 22 on aws consol
  ingress_cidr_blocks = ["0.0.0.0/0"] #meaning it can be open from entire internet 

  # Egress Rule - all-all open
  egress_rules = ["all-all"] # for entire outbound rules
  tags = local.common_tags 
}