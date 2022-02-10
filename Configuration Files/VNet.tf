module "VNet"{
    source = "../Modules/VNet"
    vnet-name            =    "vijaytfstorage"
    vnet-rg-name         =    azurerm_resource_group.app_grp.name
    vnet-location     =    azurerm_resource_group.app_grp.location
}
