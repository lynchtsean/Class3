locals {
  resource_groups = {
    rg-dev-montreal   = "montreal"
    rg-dev-toronto   = "toronto"
    rg-dev-ottawa  = "ottawa"
    rg-dev-winnipeg   = "winnipeg"
    rg-dev-edmonton       = "edmonton"
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
