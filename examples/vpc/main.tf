module "info" {
  source  = "Selleo/context/null"
  version = "0.3.0"

  namespace = "tf-vpc-example"
  stage     = "test"
  name      = "network"
}

module "vpc" {
  source = "../../modules/vpc"

  context = module.info.context
}

