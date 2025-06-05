module "linux_web_app" {
  source              = "./modules/linux_web_app"
  name                = "mytestlinux-web-app"
  location            = azurerm_resource_group.lynchterraform.location
  resource_group_name = azurerm_resource_group.lynchterraform.name

  service_plan_name     = "mcit-app-service-plan"
  service_plan_sku_name = "B1"  # Example values: B1, S1, P1v3, EP1, etc.

  site_config = {
    always_on     = true
    http2_enabled = true
  }

  app_settings = {
    "ENV" = "dev"
  }

  tags = {
    environment = "dev"
    team        = "infra"
  }
}
