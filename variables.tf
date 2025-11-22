variable "aws_region" {
  description = "AWS region for EC2"
  type        = string
  default     = "ap-south-1" # Mumbai
}
variable "aws_instance_type" {
  description = "EC2 instance type"
  type        = string
  # t2.micro is NOT available in some AZs in ap-south-1
  # t3.micro works in all AZs and is free-tier eligible
  default = "t3.micro"
}
variable "azure_subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}
variable "azure_tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}
variable "azure_location" {
  description = "Azure region"
  # Must match your allowed locations policy:
  # ["eastasia","southeastasia","austriaeast","koreacentral","uaenorth"]
  type    = string
  default = "eastasia"
}
variable "project_name" {
  description = "Common name prefix for resources"
  type        = string
  default     = "multicloud-demo"
}
