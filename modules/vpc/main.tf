data "aws_region" "current" {}

module "info" {
  source  = "Selleo/context/null"
  version = "0.3.0"

  namespace = var.context.namespace
  stage     = var.context.stage
  name      = var.context.name
}

locals {
  azs = [
    for letter in var.availability_zone_identifiers :
    "${data.aws_region.current.name}${letter}"
  ]
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = module.info.id_as.name
  cidr = var.cidr

  azs             = local.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  single_nat_gateway = var.single_nat_gateway
  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = merge(
    module.info.tags,
    {
      "terraform.module"    = "Selleo/terraform-aws-vpc"
      "terraform.submodule" = "vpc"
    }
  )
}
