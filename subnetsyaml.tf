locals {
  subnet_file = file("${path.module}/subnetsyaml")
  subnet_map  = yamldecode(local.subnet_file).subnets
}

resource "azurerm_resource_group" "subnetsean_rg" {
  name     = "subnetsean-rg"
  location = "eastus"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "seanvnet-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.subnetsean_rg.location
  resource_group_name = azurerm_resource_group.subnetsean_rg.name
}

resource "azurerm_subnet" "subnets" {
  for_each             = local.subnet_map
  name                 = each.key
  resource_group_name  = azurerm_resource_group.subnetsean_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value]
}
