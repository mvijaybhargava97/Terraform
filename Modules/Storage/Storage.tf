data "azurerm_virtual_network" "vnet" {
  name                = var.vnet-name
  resource_group_name = var.vnet-rg-name
}

/*data "azurerm_subnet" "subnet" {
  for_each             = data.azurerm_virtual_network.vnet.subnets
  name                 = each.key
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = var.vnet-rg-name
}*/

locals{
  subnet_ids = [for subnet_name in data.azurerm_virtual_network.vnet.subnets : concat(data.azurerm_virtual_network.vnet.id,"/subnets/",subnet_name) ]
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage-name
  resource_group_name      = var.rg-name
  location                 = var.rg-location
  account_tier             = var.storage-tier
  account_replication_type = var.storage-replication
  network_rules {
    default_action             = "Allow"
    ip_rules                   = []
    virtual_network_subnet_ids = local.subnet_ids
  }
}