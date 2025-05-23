resource "azurerm_resource_group" "mynamegroup" {
  name     = "${var.seanwebapp}rm"
  location = "canadacentral"
}
resource "azurerm_service_plan" "seanserviceplan" {
  name                = "${var.seanwebapp}sp"
  resource_group_name = azurerm_resource_group.mynamegroup.name
  location            = azurerm_resource_group.mynamegroup.location
  os_type             = "p1v2"
  sku_name            = "Windows"
}

resource "azurerm_windows_web_app" "seanwebapp" {
  name                = "${var.seanwebapp}wwa"
  resource_group_name = azurerm_resource_group.mynamegroup.name
  location            = azurerm_resource_group.mynamegroup.location
  service_plan_id     = azurerm_service_plan.seanserviceplan.id

  site_config {}
}
