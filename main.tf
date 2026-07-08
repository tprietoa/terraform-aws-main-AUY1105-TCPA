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
  source = "git::https://github.com/tprietoa/terraform-aws-vpc-AUY1105-TCPA.git?ref=v1.0.0"

  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name

}

# ---- S3 ----
module "s3" {
  source = "git::https://github.com/tprietoa/terraform-aws-SE-AUY1105-TCPA.git?ref=v1.0.0"

  bucket_prefix = var.s3_bucket_prefix
  bucket_suffix = var.s3_bucket_suffix
}


# ---- EC2 ----
module "ec2" {
  source = "git::https://github.com/tprietoa/terraform-aws-ec2-AUY1105-TCPA.git?ref=v1.0.0"

  subnet_id         = module.vpc.subnet_publica_1_id
  vpc_id            = module.vpc.vpc_id
  security_group_id = module.vpc.security_group_id
  instance_name     = var.ec2_instance_name
}