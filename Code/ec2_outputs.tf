# for public intance
output "ec2_public_instance_ids" {
  description = "Outputs the public id of the instance"
  value       = module.my_public_ec2.id
}

output "ec2_public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.my_public_ec2.public_ip
}

# Private
output "ec2_private_instance_ids" {
  description = "Outputs the public id of the instance"
  # value       = module.my_private_ec2.id
  value = [for ec2_private in module.my_private_ec2 : ec2_private.id]
}

output "ec2_private_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  # value       = module.my_private_ec2.public_ip
  value = [for ec2_private in module.my_private_ec2 : ec2_private.private_ip]
}