resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet-name
  location            = var.vnet-location
  resource_group_name = var.vnet-rg-name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = []

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = "subnet3"
    address_prefix = "10.0.3.0/24"
  }
}
