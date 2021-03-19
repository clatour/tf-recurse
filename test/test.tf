terraform {
  backend "local" {}
}

module "recursive" {
  source = "../"
  depth  = 1
}
