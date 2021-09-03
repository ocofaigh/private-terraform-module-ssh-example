terraform {
  required_version = ">= 1.0.0"
}

module "private_ghe_module" {
  source = "git@github.ibm.com:my-org/private_ghe_module.git?ref=1.0.0"
}
