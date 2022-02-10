#Function Plan
resource "azurerm_app_service_plan" "functionplan" {
  name                = var.plan-name
  resource_group_name = var.app-rg
  location            = var.app-location
  sku {
    tier = "Standard"
    size = "S1"
  }
}

#Function App
resource "azurerm_function_app" "function" {
  name                        = var.func-name
  resource_group_name         = var.app-rg
  location                    = var.app-location
  storage_account_name        = var.storage-name
  app_service_plan_id         = azurerm_app_service_plan.functionplan.id
  app_settings                = var.app-settings
  storage_account_access_key  = var.storage_accesskey
  site_config {}
}