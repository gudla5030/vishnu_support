resource "azurerm_firewall" "az_firewall" {
  name                = var.firewall_name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.firewall_subnet01.id
    public_ip_address_id = azurerm_public_ip.firewall_pip.id
  }
  depends_on = [
    azurerm_virtual_network.east-vnet01,
    azurerm_subnet.firewall_subnet01,
    azurerm_public_ip.firewall_pip
  ]
}

resource "azurerm_firewall_nat_rule_collection" "firewall_nat" {
  name                = "testcollection"
  azure_firewall_name = azurerm_firewall.az_firewall.name
  resource_group_name = azurerm_resource_group.rg1.name
  priority            = 500
  action              = "Dnat"

  rule {
    name = "testrule"

    source_addresses = [
      "192.168.0.0/16",
    ]

    destination_ports = [
      "53",
    ]

    destination_addresses = [
      azurerm_public_ip.firewall_pip.ip_address
    ]

    translated_port = 53

    translated_address = "8.8.8.8"

    protocols = [
      "TCP",
      "UDP",
    ]
  }
}