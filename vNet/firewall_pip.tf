resource "azurerm_public_ip" "firewall_pip" {
  name                = var.firewall_pip_name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  allocation_method   = var.allocation_method
  sku                 = var.sku
}