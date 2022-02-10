#locals{
#    app-settings  =  merge(var.appsettings,tomap({APPINSIGHTS_INSTRUMENTATIONKEY = module.AppInsights.instrumentation_key}))
#
/*
module "AppInsights"{
    for_each  =  var.func-names
    source = "../Modules/AppInsights"
    ai-rg-name   =  azurerm_resource_group.app_grp.name
    ai-location  =  azurerm_resource_group.app_grp.location
    ai-name      =  join("-",[each.value,"insights"])
}

module "Storage"{
    source = "../Modules/Storage"
    storage-name         =    "vijaytfstorage"
    rg-name              =    azurerm_resource_group.app_grp.name
    rg-location          =    azurerm_resource_group.app_grp.location
    storage-tier         =    "Standard"
    storage-replication  =    "LRS"
}

module "FunctionApp"{
    for_each  =  var.func-names
    source = "../Modules/FunctionApp"
    app-rg       =    azurerm_resource_group.app_grp.name
    app-location  =    azurerm_resource_group.app_grp.location
    func-name          =    each.value
    plan-name          =    "vijay-tf-plan"
    storage-name       =    "vijaytfstorage"
    app-settings       =    merge(var.appsettings,tomap({APPINSIGHTS_INSTRUMENTATIONKEY = module.AppInsights[each.value].instrumentation_key}))
    storage_accesskey  =    module.Storage.primary_access_key
}
*/