variable "vpc_id" {
  description = "The ID of the VPC in which to create the instance."
}

variable "vpc_cidr" {
  type        = "string"
  description = "The cidr block for the current vpc"
}

variable "subnet_ids" {
  type        = "list"
  description = "The ID of the subnet in which to create the instance into.  A subnet is a range of IP addresses in your VPC that can be used to isolate different EC2 resources from each other or from the Internet. Each subnet resides in one Availability Zone."
}

variable "region" {
  type        = "string"
  description = "The AWS region the servers reside in."
}

variable "availability_zones" {
  type        = "list"
  description = "availability zone where the ec2 instance is deployed."
}

variable "ec2_instance_count" {
  description = "ec2_instance_count"
}

variable "ec2_instance_names" {
  type        = "list"
  description = "Each EC2 server that is used in Comericas AWS accounts should be named with the following pattern: <ENVIRONMENT>-<APP_CODE>-<ROLE>-<APP_CATEGORY>-<APP_SUB_CATEGORY>-VM<NUMBER>"
}


variable "ebs_mw_volume_type" {
  description = "ebs_mw_volume_type"
}

variable "ebs_mw_volume_size" {
  description = "ebs_mw_volume_size"
}

variable "instance_type" {
  description = "The type of instance determines your instance CPU capacity, memory, and storage (e.g., m1.small, c1.xlarge)"
}

variable "infra_sg" {
  description = "Security Group for Infrastructure"
}

variable "key_name" {
  description = "key pair name"
}

variable "ec2_ingress_cidrs" {
  type = "list"
  description = "ec2_ingress_cidrs"
}

variable "ec2_egress_cidrs" {
  type = "list"
  description = "ec2_egress_cidrs"
}

variable "app_ingress_cidrs" {
  description = "app_ingress_cidrs"
}
