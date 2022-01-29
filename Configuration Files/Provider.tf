provider "azurerm"{
    subscription_id = "848bffad-a9ae-486f-a160-76388acf2e31"
    client_id = "f2fdc7c8-d30a-4497-bfb9-b56824f22526"
    client_secret = "uwy7Q~Mn2hALFQwe-u8hZwr8wR6o.zc2KziKV"
    tenant_id = "808cc83e-a546-47e7-a03f-73a1ebba24f3"
    features {}
}
#
export ARM_USE_MSI=true
export ARM_SUBSCRIPTION_ID=848bffad-a9ae-486f-a160-76388acf2e31
export ARM_TENANT_ID=808cc83e-a546-47e7-a03f-73a1ebba24f3
export ARM_MSI_ENDPOINT=$MSI_ENDPOINT