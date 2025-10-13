variable "region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "az" {
  description = "Availability Zone to place subnets"
  type        = string
}

variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive = true
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}


variable "project_name" {
  description = "Project name prefix for resource naming"
  type        = string
  default     = "terraform-demo"
}

variable "vpc_cidr" {
  description = "CIDR block for the main VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "EC2 key pair name (I created it manually in AWS console)"
  type        = string
}

variable "bucket_name" {
  description = "Unique S3 bucket name for logs"
  type        = string
}
