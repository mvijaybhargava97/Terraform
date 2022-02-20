
module "Storage"{
    source = "../Modules/Storage"
    depends_on = [module.VNet]
    storage-name         =    "vijaytfstorage"
    rg-name              =    azurerm_resource_group.app_grp.name
    rg-location          =    azurerm_resource_group.app_grp.location
    storage-tier         =    "Standard"
    storage-replication  =    "LRS"
    vnet-name            =    module.VNet.vnet-name
    vnet-rg-name         =    azurerm_resource_group.app_grp.name
}
