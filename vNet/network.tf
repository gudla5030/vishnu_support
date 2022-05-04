# Creating virtual Network
resource "azurerm_virtual_network" "east-vnet01" {
  name                = var.east-vnet01
  address_space       = var.east-vnet-address

  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

}

# Creating Subnets on east vNet01

resource "azurerm_subnet" "internal_subnet01" {
  name                 = var.internal_subnet01
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.east-vnet01.name
  address_prefixes     = var.internal-subnet-address
}

resource "azurerm_subnet" "external_subnet01" {
  name                 = var.externalsubnet
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.east-vnet01.name
  address_prefixes     = var.external-subnet-address
}

resource "azurerm_subnet" "firewall_subnet01" {
  name                 = var.azfirewall
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.east-vnet01.name
  address_prefixes     = var.azfirewall-subnet-address
}

# Create vNet at West location

# resource "azurerm_virtual_network" "west-vnet01" {
#   name                = "batch5-west-vnet01"
#   address_space       = ["172.16.0.0/16"]
#   location            = azurerm_resource_group.rg2.location
#   resource_group_name = azurerm_resource_group.rg2.name
# }

# resource "azurerm_subnet" "west-internal_subnet01" {
#   name                 = "internal_subnet01"
#   resource_group_name  = azurerm_resource_group.rg2.name
#   virtual_network_name = azurerm_virtual_network.west-vnet01.name
#   address_prefixes     = ["172.16.1.0/24"]
# }

# resource "azurerm_subnet" "west-external_subnet01" {
#   name                 = "external_subnet01"
#   resource_group_name  = azurerm_resource_group.rg2.name
#   virtual_network_name = azurerm_virtual_network.west-vnet01.name
#   address_prefixes     = ["172.16.2.0/24"]
# }
