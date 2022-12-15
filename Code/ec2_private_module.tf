module "my_private_ec2" {
  depends_on = [module.my_vpc] # metaargument used so that vpc needs to be created first then the ec2. watch section 7 video 56 for deeper understanding.
  source     = "terraform-aws-modules/ec2-instance/aws"
  version = "4.2.1"


  # insert the 34 required variables here
  for_each = toset(["0", "1"])
  name     = "${var.my_environment}-private_vm"
  # instance_count = 5

  ami           = data.aws_ami.my_amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  # monitoring             = true
  vpc_security_group_ids = [module.my_private_SG.this_security_group_vpc_id]
  # subnet_id             = [module.my_vpc.private_subnets[0], module.my_vpc.private_subnets[1]]
  subnet_id = element(module.my_vpc.private_subnets, tonumber(each.key))
  # instance_count         = 3
  tags      = local.common_tags

}