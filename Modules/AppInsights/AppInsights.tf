#App Insights
resource "azurerm_application_insights" "functionInsights" {
  name                = var.ai-name
  resource_group_name = var.ai-rg-name
  location            = var.ai-location
  application_type    = "web"
}