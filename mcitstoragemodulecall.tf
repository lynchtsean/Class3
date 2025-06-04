variable "storage_accounts" {
  default = {
    seanstorage514 = "mymcitstorage_1"
    seanstorage515 = "mymcitstorage_2"
    seanstorage516 = "mymcitstorage_3"
    seanstorage517 = "mymcitstorage_4"
    seanstorage518 = "mymcitstorage_5"
  }
}

module "mymcitstorage" {
  for_each                = var.storage_accounts
  source                  = "./modules/storage_account"
  name                    = each.key
  resource_group_name     = azurerm_resource_group.lynchterraform.name
  location                = azurerm_resource_group.lynchterraform.location
  account_tier            = "Standard"
  account_replication_type = "LRS"
  kind                    = "StorageV2"
  access_tier             = "Hot"
  tags = {
    environment = "dev"
    team        = "infra"
  }
}
