module "backend" {
  source = "./backend-stf"
}

terraform {
  backend "s3" {
    bucket         = "mdiab159357-stf"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./vpc-m"
}

module "subnet" {
  source = "./subnet-m"
  vpc_id = module.vpc.vpc_id
}

module "sg" {
  source = "./sg-m"
  vpc_id = module.vpc.vpc_id
}

module "networking" {
  source             = "./networking-m"
  vpc_id             = module.vpc.vpc_id
  public_subnet_1_id = module.subnet.public_subnet_1_id
  public_subnet_2_id = module.subnet.public_subnet_2_id
}

module "ec2_public" {
  source           = "./ec2-public-m"
  # subnet_id        = module.subnet.public_subnet_1_id
  sg_id            = module.sg.sg_id
  private_key_path = var.private_key_path
  public_subnet_1_id     = module.subnet.public_subnet_1_id
  public_subnet_2_id     = module.subnet.public_subnet_2_id

}

module "ec2_private" {
  source               = "./ec2-private-m"
  private_subnet_1_id  = module.subnet.private_subnet_1_id
  private_subnet_2_id  = module.subnet.private_subnet_2_id
  sg_id                = module.sg.sg_id
  private_key_path     = var.private_key_path
}

module "alb_public" {
  source             = "./alb-public-m"
  vpc_id             = module.vpc.vpc_id
  public_subnet_1_id = module.subnet.public_subnet_1_id
  public_subnet_2_id = module.subnet.public_subnet_2_id
  sg_id              = module.sg.sg_id
}

module "alb_private" {
  source               = "./alb-private-m"
  vpc_id               = module.vpc.vpc_id
  private_subnet_1_id  = module.subnet.private_subnet_1_id
  private_subnet_2_id  = module.subnet.private_subnet_2_id
  sg_id                = module.sg.sg_id
}
