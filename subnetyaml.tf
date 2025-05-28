locals {
  location            = "eastus"
  resource_group_name = "subnetsean-rg"

  subnet_map = {
    frontend = "10.0.1.0/24"
    backend  = "10.0.2.0/24"
    db       = "10.0.3.0/24"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = local.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = local.location
  resource_group_name = local.resource_group_name
}

resource "azurerm_subnet" "subnets" {
  for_each             = local.subnet_map
  name                 = each.key
  resource_group_name  = local.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value]
}
