# Input Variables
# AWS Region
variable "my_aws_region" {
  description = "indicates in which region my AWS resourse are created"
  type = string
  default = "us-east-1"  
}
# Environment Variable
variable "my_environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}
# Business Division
variable "business_div" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "HR"
}