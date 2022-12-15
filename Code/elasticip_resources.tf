resource "aws_eip" "bastion_eip" {
  depends_on = [module.my_public_ec2, module.my_vpc]
  instance   = module.my_public_ec2.id[0]
  vpc        = true
  tags       = local.common_tags

# Local Exec Provisioner:  local-exec provisioner (Destroy-Time Provisioner - Triggered during deletion of Resource)
  provisioner "local-exec" {
    command     = "echo Destroy time prov `date` >> destroy-time-prov.txt"
    working_dir = "local-exec-output-files/"
    when        = destroy
    #on_failure = continue
  }
} 