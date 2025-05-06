resource "azurerm_storage_container" "lynchterraform" {
  name                  = "content"
  storage_account_id    = azurerm_storage_account.lynchterraform.id
  container_access_type = "private"
}
