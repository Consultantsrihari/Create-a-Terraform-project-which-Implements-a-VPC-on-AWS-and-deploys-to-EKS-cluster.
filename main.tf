terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones
  environment        = var.environment
}

module "eks" {
  source = "./modules/eks"

  environment         = var.environment
  subnet_ids         = module.vpc.private_subnet_ids
  kubernetes_version = "1.27"
  
  node_desired_size  = 2
  node_max_size      = 4
  node_min_size      = 1
  node_instance_types = ["t3.medium"]
}