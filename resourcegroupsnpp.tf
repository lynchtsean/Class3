locals {
  resource_groups = {
    rg-dev-eastus   = "eastus"
    rg-dev-westus   = "westus"
    rg-dev-central  = "centralus"
    rg-dev-canada   = "canadacentral"
    rg-dev-canadawest      = "canadawest"
  }
}

module "resource_groups" {
  for_each = local.resource_groups

  source   = "./modules/resource_group"
  name     = each.key
  location = each.value
  tags = {
    environment = "dev"
    team        = "infra"
  }
}
