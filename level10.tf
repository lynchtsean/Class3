locals {
  names = ["eastus", "westeurope", "centralindia"]
  }
locals {
  vms = ["vm1", "vm2", "vm3"]

  vms_map = { for idx, name in local.vms : "vm_${idx}" => name }
  }
locals {
  rg_names = ["dev-rg", "test-rg", "prod-rg"]
  }

resource "azurerm_resource_group" "rg" {
  for_each = toset(local.rg_names)

  name     = each.key
  location = "East US"
  }
locals {
  keys   = ["env", "team", "owner"]
  values = ["prod", "devops", "alice"]

  combined_map = zipmap(local.keys, local.values)
}

