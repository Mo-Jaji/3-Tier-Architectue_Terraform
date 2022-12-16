module "my_public_ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.2.1"

 # insert the 34 required variables here

  name = "${var.my_environment}-Public_EC2_Intance"

  # instance_count = 5 as it's only for one instance, we don't need count but I have added it for future 

  ami           = data.aws_ami.my_amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  # monitoring             = true
  vpc_security_group_ids = [module.my_public_bastion_SG.this_security_group_id]
  subnet_id              = module.my_vpc.public_subnets[0]
  user_data = file("${path.module}/app1-install.sh")
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }

}