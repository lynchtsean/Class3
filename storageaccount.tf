resource "azurerm_storage_account" "mcitstorage" {
  name                      = var.lynchterraform
  resource_group_name       = azurerm_resource_group.lynchterraform.name
  location                  = azurerm_resource_group.lynchterraform.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type 
  
  tags = {
    environement = "dev"
  }
}
