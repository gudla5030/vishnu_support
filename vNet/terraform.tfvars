rg1_name        = "Batch5-UAT-east-RG01"
rg2_name        = "Batch5-UAT-west-RG02"
rg1_location    = "centralus"
rg2_location    = "westus"
east-vnet01     = "east-vnet01"
east-vnet-address = ["192.168.0.0/16"]
internal_subnet01 = "internal_subnet01"
internal-subnet-address = ["192.168.1.0/24"]
externalsubnet      = "external_subnet01"
external-subnet-address = ["192.168.2.0/24"]
azfirewall  = "AzureFirewallSubnet"
azfirewall-subnet-address = ["192.168.100.0/24"]

firewall_pip_name = "firewall-pip"
allocation_method = "Static"
sku = "Standard"
firewall_name = "hubfirewall"