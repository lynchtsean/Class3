module "mymcitstorage" {
  source              = "./modules/storage_account"
  name                = "seanstorage514"
  resource_group_name = azurerm_resource_group.lynchterraform.name
  location            = azurerm_resource_group.lynchterraform.location
  account_tier        = "Standard"
  account_replication_type = "LRS"
  kind                = "StorageV2"
  access_tier         = "Hot"
  tags = {
    environment = "dev"
    team        = "infra"
  }
}
module "mymcitstorage_2" {
  source                  = "./modules/storage_account"
  name                    = "seanstorage515"
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

module "mymcitstorage_3" {
  source                  = "./modules/storage_account"
  name                    = "seanstorage516"
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

module "mymcitstorage_4" {
  source                  = "./modules/storage_account"
  name                    = "seanstorage517"
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

module "mymcitstorage_5" {
  source                  = "./modules/storage_account"
  name                    = "seanstorage518"
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
