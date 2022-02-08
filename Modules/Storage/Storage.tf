resource "azurerm_storage_account" "storage" {
  name                     = var.storage-name
  resource_group_name      = var.rg-name
  location                 = var.rg-location
  account_tier             = var.storage-tier
  account_replication_type = var.storage-replication
}