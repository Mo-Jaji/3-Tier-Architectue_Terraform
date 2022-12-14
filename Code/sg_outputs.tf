# obtained from using Terraform Modules

# Public Bastion Host Security Group Outputs
output "public_bastion_sg_id" {
  description = "The ID of the security group"
  value       = module.my_public_bastion_SG.this_security_group_id
}
output "public_bastion_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.my_public_bastion_SG.this_security_group_vpc_id
}
output "public_bastion_sg_name" {
  description = "The name of the security group"
  value       = module.my_public_bastion_SG.this_security_group_name
}


# Private EC2 Instances Security Group Outputs
output "private_sg_id" {
  description = "The ID of the security group"
  value       = module.my_private_SG.this_security_group_id
}
output "private_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.my_private_SG.this_security_group_vpc_id
}
output "private_sg_name" {
  description = "The name of the security group"
  value       = module.my_private_SG.this_security_group_name
}