output "primary_access_key"{
    value = azurerm_storage_account.storage.primary_access_key
    description = "The Primary Access Key of the Storage Account"
}