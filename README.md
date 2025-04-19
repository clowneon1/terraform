
# Terraform Repository

This repository encompasses a collection of Terraform scripts crafted during my journey to achieve Terraform certification. Each script is designed to demonstrate specific Terraform functionalities and best practices, serving as both a learning tool and a reference for others pursuing similar goals.

## Overview

The repository is structured into various directories, each focusing on different aspects of Terraform:

- **AWS Infrastructure**: Scripts for creating EC2 instances, S3 buckets, IAM roles, EKS clusters, and ELBs.
- **State Management**: Examples demonstrating remote state access and backend configurations.
- **Advanced Features**: Utilization of dynamic blocks, conditional expressions, and lifecycle meta-arguments.
- **GitHub Integration**: Automating repository creation and management using Terraform.
- **Challenges**: A series of self-imposed challenges to test and enhance Terraform proficiency.

## Modules

Each directory contains:

- `main.tf`: Primary Terraform configuration.
- `variables.tf`: Input variable definitions.
- `outputs.tf`: Output values after resource creation.
- `README.md`: Module-specific documentation.

For example, the `aws-create-ec2` module includes scripts to provision an EC2 instance with customizable parameters.

## Prerequisites

Ensure the following are installed and configured:

- [Terraform](https://www.terraform.io/downloads.html)
- AWS CLI with appropriate credentials
- Git

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/clowneon1/terraform.git
   cd terraform
   ```


2. Navigate to the desired module directory:

   ```bash
   cd aws-create-ec2
   ```


3. Initialize Terraform:

   ```bash
   terraform init
   ```


4. Review and customize variables in `variables.tf` or create a `terraform.tfvars` file.

5. Plan and apply the configuration:

   ```bash
   terraform plan
   terraform apply
   ```


## Contributing

Contributions are welcome! If you have suggestions or improvements, please fork the repository and submit a pull request.

--- 
