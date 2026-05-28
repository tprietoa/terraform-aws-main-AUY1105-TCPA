terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# ---- VPC ----
module "vpc" {
  source   = "git::https://github.com/tprietoa/terraform-aws-vpc-AUY1105-TCPA.git?ref=v0.1.0"
  
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  # Las demás variables comentadas que tenías...
}

# ---- S3 ----
module "s3" {
  source = "git::https://github.com/tprietoa/terraform-aws-SE-AUY1105-TCPA.git?ref=v0.1.0"

  bucket_prefix = "tp-proyecto"
  bucket_suffix = "pro-2026"
} 

# ---- EC2 ----
module "ec2" {
  source        = "git::https://github.com/tprietoa/terraform-aws-ec2-AUY1105-TCPA.git?ref=v0.1.0"
  
  subnet_id     = module.vpc.subnet_publica_1_id
  vpc_id        = module.vpc.vpc_id
  instance_name = "MiInstancia"
}