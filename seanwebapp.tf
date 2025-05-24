resource "azurerm_resource_group" "seanrg" {
  name     = "${var.my_name}rg"
  location = "canadacentral"
}
resource "azurerm_service_plan" "seanserviceplan" {
  name                = "${var.my_name}sp"
  resource_group_name = azurerm_resource_group.seanrg.name
  location            = azurerm_resource_group.seanrg.location
  os_type             = "Windows"
  sku_name            = "P1v2"
}

resource "azurerm_windows_web_app" "seanwebapp" {
  name                = "${var.my_name}wwa"
  resource_group_name = azurerm_resource_group.seanrg.name
  location            = azurerm_resource_group.seanrg.location
  service_plan_id     = azurerm_service_plan.seanserviceplan.id

  site_config {}
}
