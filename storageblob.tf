resource "azurerm_storage_blob" "lynchterraform" {
  name                   = "my-awesome-content.zip"
  storage_account_name   = azurerm_storage_account.mcitstorage.name
  storage_container_name = azurerm_storage_container.lynchterraform.name
  type                   = "Block"
  source                 = "some-local-file.zip"
}
