variable "aws_region" {
  description = "AWS region where the resources will be created"
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "Name of the VPC to be created"
  type        = string
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "CIDR block for the VPC to be created"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "Availability zones where the VPC subnets will be created"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "CIDR blocks for the private subnets of the VPC"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "CIDR blocks for the public subnets of the VPC"
  type        = set(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "Name of the EKS cluster to be created"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "Kubernetes version for the EKS cluster to be created"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Instance types for the EKS managed node group"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Tags to be applied to the created resources"
  type        = map(any)
  nullable    = false
}

variable "min_size" {
  description = "Minimum size of the EKS managed node group"
  type        = number
  nullable    = false
}

variable "max_size" {
  description = "Maximum size of the EKS managed node group"
  type        = number
  nullable    = false
}

variable "desired_size" {
  description = "Desired size of the EKS managed node group"
  type        = number
  nullable    = false
}