# Terraform AWS Two-Tier Infrastructure Practical

## Overview
This repository contains a Terraform configuration to deploy a **two-tier architecture** on AWS. The setup includes both public and private subnets, EC2 instances, IAM roles, and associated networking components, designed for a secure and scalable environment.

## Architecture Components
The infrastructure includes:

1. **VPC & Subnets**
   - A custom VPC to isolate resources.
   - **Public Subnet**: For internet-facing EC2 instances.
   - **Private Subnet**: For backend EC2 instances, inaccessible directly from the internet.

2. **Internet Gateway (IGW)**
   - Provides internet connectivity for public subnet resources.

3. **NAT Gateway**
   - Allows private subnet instances to access the internet securely (e.g., for updates).

4. **Route Tables**
   - Public and private route tables to control traffic flow.
   - Public route table routes traffic to IGW.
   - Private route table routes traffic to NAT Gateway.

5. **EC2 Instances**
   - **Frontend**: Deployed in the public subnet.
   - **Backend**: Deployed in the private subnet.
   - Both instances use IAM roles for secure AWS API access.

6. **IAM Roles & Policies**
   - EC2 instances are assigned IAM roles for secure access to AWS resources (e.g., S3).

7. **S3 Integration**
   - Backend EC2 can interact with S3 buckets using assigned IAM roles (no hard-coded credentials).

## Key Features
- Two-tier architecture with proper segregation of public and private resources.
- Secure internet access using NAT Gateway for private resources.
- IAM roles for secure AWS resource access.
- Fully automated infrastructure provisioning using Terraform.
- Scalable and modular setup for easy expansion.

## Terraform Files
- `main.tf`: Core resource definitions (VPC, subnets, IGW, NAT, route tables, EC2).
- `variables.tf`: Input variables for dynamic configuration.
- `terraform.tfvars`: Sensitive and environment-specific values (kept out of GitHub via `.gitignore`).
- `outputs.tf`: Outputs such as public/private IPs for reference.

