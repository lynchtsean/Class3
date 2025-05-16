variable "environments_second" {
  default = ["dev", "qa", "stage", "prod"]
}

variable "service_names_town" {
  default = ["montreal", "toronto", "calgary", "ottawa"]
}

locals {
  # Validate lengths match (optional but good practice)
  env_service_map = zipmap(var.environments_second, var.service_names_town)
}

resource "azurerm_storage_account" "mcitstoremay2025second" {
  for_each = local.env_service_map

  name                     = each.value
  resource_group_name      = "mcitresources"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

output "mcit16may2025second" {
  value = local.env_service_map
}
