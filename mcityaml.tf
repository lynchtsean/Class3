#test
locals {
  windows_app=[for f in fileset("${path.module}/mcityaml", "[^_]*.yaml") : yamldecode(file("${path.module}/mcityaml/${f}"))]
  windows_app_list = flatten([
    for app in local.windows_app : [
      for winapps in try(app.listofwindowsapp, []) :{
        name=winapps.name
        os_type=winapps.os_type
        sku_name=winapps.sku_name     
      }
    ]
])
}
   
resource "azurerm_service_plan" "mcitdevrm" {
  for_each            ={for sp in local.windows_app_list: "${sp.name}"=>sp }
  name                = each.value.name
  resource_group_name = azurerm_resource_group.mcitdevrm.name
  location            = azurerm_resource_group.mcitdevrm.location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
}

resource "azurerm_windows_web_app" "mcitdevrm" {
  for_each            = azurerm_service_plan.mcitdevrm
  name                = each.value.name
  resource_group_name = azurerm_resource_group.mcitdevrm.name
  location            = azurerm_resource_group.mcitdevrm.location
  service_plan_id     = each.value.id

  site_config {}
}
