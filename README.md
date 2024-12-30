# Create-a-Terraform-project-which-Implements-a-VPC-on-AWS-and-deploys-to-EKS-cluster.
In this Terraform project we will learn how to provisions a Virtual Private Cloud (VPC) on AWS, deploys an Amazon Elastic Kubernetes Service (EKS) cluster within that VPC, and provides associated networking and IAM resources. In this I'll create a well-organized Terraform configuration for an AWS VPC and EKS cluster, split into logical modules.

![DALL·E 2024-12-30 21 19 52 - A detailed and vibrant illustration of a Terraform project setup for implementing a Virtual Private Cloud (VPC) on AWS and deploying an Elastic Kubern](https://github.com/user-attachments/assets/229c8483-fcad-47f1-a9d2-aba0e5ec95ee)

main.tf
variables.tf
outputs.tf
modules/vpc/main.tf
modules/vpc/variables.tf
modules/vpc/outputs.tf
modules/eks/main.tf
modules/eks/variables.tf
modules/eks/outputs.tf
terraform.tfvars

1. I. created a modular Terraform configuration that sets up:
   main.tf
   variables.tf
   outputs.ts

2. A VPC module (modules/vpc) that creates:
  VPC with DNS support
  Public and private subnets across multiple AZs
  Internet Gateway
  NAT Gateways
  Route tables
      main.tf
      variables.tf
      outputs.ts

 3. An EKS module (modules/eks) that creates:

EKS cluster
Node group with autoscaling
Required IAM roles and policies  

  main.tf
  variables.tf
  output.tf

To use this configuration:

Initialize Terraform:

terraform init
Review the plan:

terraform plan
Apply the configuration:

terraform apply
The configuration uses variables with sensible defaults but can be customized through the terraform.tfvars file.

Key features:

Highly available setup across 3 AZs
Private subnets for EKS nodes
Public subnets for load balancers
Proper IAM roles and policies
Autoscaling node group
Proper tagging for EKS and AWS Load Balancer Controller


