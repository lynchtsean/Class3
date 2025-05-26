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
locals {
  regions    = ["eastus", "westeurope", "southindia", "centralus"]
  us_regions = [for r in local.regions : r if can(regex("us", r))]
  }
locals {
  apps = ["api", "frontend", "worker", "db"]
  }
locals {
  cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

resource "azurerm_resource_group" "sean" {
  name     = "sean-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "sean-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.sean.location
  resource_group_name = azurerm_resource_group.sean.name
}

resource "azurerm_subnet" "sean" {
  for_each = { for idx, cidr in local.cidrs : "subnet_${idx}" => cidr }

  name                 = each.key
  resource_group_name  = azurerm_resource_group.sean.name
  virtual_network_name = azurerm_virtual_network.sean.name
  address_prefixes     = [each.value]

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
        "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"
      ]
    }
  }
}
