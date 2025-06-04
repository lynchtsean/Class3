resource "azurerm_resource_group" "snpp2025" {
  name     = var.name
  location = var.location
  tags     = var.tags
}
