resource "azurerm_virtual_network" "vnet_1" {
  name                = var.vnet_1
  address_space       = var.IP
  location            = var.rg1_location
  resource_group_name = var.rg1
}

resource "azurerm_subnet" "Subnet_10" {
  name                 = var.Subnet_10
  resource_group_name  = var.rg1
  virtual_network_name = var.vnet_1
  address_prefixes     = var.Intersub
}

resource "azurerm_subnet" "Subnet_20" {
  name                 = var.Subnet_20
  resource_group_name  = var.rg1
  virtual_network_name = var.vnet_1
  address_prefixes     = var.Extersub
  depends_on = [ azurerm_resource_group.rg1 ]
  }