resource "azurerm_storage_account" "mcitstoragemodule" {
  name                     = var.name
  resource_group_name      = var.rm_group_name
  location                 = var.place
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier

  tags = var.tags
}
