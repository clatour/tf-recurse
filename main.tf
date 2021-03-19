variable "depth" {
  type    = number
  default = 1
}

output "depth" {
  value = local.depth
}

locals {
  depth = var.depth - 1
}

module "r" {
  source = "./."
  count  = local.depth != 0 ? 1 : 0
  depth  = local.depth
}
