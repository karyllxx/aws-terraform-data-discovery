variable "aws_region" {
  type        = string
  description = "AWS region where resources are located"
}

variable "project_id" {
  type        = string
  description = "Identifier used for tagging"
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "public_subnet_name" {
  type        = string
  description = "Public subnet"
}

variable "security_group_name" {
  type        = string
  description = "Security group"
}