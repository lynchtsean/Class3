module "mcitsean514" {
  source              = "./modules/storage_account"
  name                = "samistorageacc12345"
  resource_group_name = azurerm_resource_group.mcitsean514.name
  location            = azurerm_resource_group.mcitsean514.location
  account_tier        = "Standard"
  account_replication_type = "LRS"
  kind                = "StorageV2"
  access_tier         = "Hot"
  tags = {
    environment = "dev"
    team        = "infra"
  }
}
