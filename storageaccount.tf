resource "azurerm_storage_account" "lynchterraform" {
  name                      = var.lynchterraform
  resource_group_name       = azurerm_resource_group.lynchterraform.name
  location                  = azurerm_resource_group.lynchterraform.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"  
  
  tags = {
    environment = "dev"
  }
}
