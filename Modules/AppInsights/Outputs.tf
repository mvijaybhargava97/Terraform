output "instrumentation_key"{
    value = azurerm_application_insights.functionInsights.instrumentation_key
    description = "The Instrumentation Key of the Application Insights"
}