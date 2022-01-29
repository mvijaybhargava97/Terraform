resource "azurerm_virtual_network" "vnet" {
  name                = "virtual-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.app_grp.location
  resource_group_name = azurerm_resource_group.app_grp.name
}

resource "azurerm_subnet" "vm" {
  name                 = "vm-subnet"
  resource_group_name  = azurerm_resource_group.app_grp.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
