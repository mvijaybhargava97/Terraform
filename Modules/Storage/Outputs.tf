output "primary_access_key"{
    value = azurerm_storage_account.storage.primary_access_key
    description = "The Primary Access Key of the Storage Account"
}


/*output "subnets_list"{
    value = data.azurerm_subnet.subnet[each.key].id
    description = "The Subnet IDs of all the subnets in the vnet"
}*/

output "subnets_list"{
    value = data.azurerm_virtual_network.vnet.subnets.ids
    description = "The Subnet IDs of all the subnets in the vnet"
}