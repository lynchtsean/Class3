resource "azurerm_storage_account" "mcitstorage" {
  name                      = var.storage_account_name
  resource_group_name       = azure_resource_group.lynchterraform.name
  location                  = azure_resource_group.lynchterraform.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"  
  
  tags = {
    environment = "dev"
  }
}
