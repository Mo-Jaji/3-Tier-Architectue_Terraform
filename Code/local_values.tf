# Define Local Values in Terraform
locals {
  owners = var.business_div
  environment = var.my_environment
  name = "${var.business_div}-${var.my_environment}"
  common_tags = {
    owners = local.owners
    environment = local.my_environment     
  }
}