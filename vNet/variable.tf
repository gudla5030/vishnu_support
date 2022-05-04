## Resource Group Variables
variable "rg1_name" {
  type = string
  description = "provide the Resource Group name"
}

variable "rg2_name" {
  type = string
  description = "provide the Resource Group name"
}

variable "rg1_location" {
  type = string
  description = "provide the RG location"
}

variable "rg2_location" {
  type = string
  description = "provide the RG location"
}

# virtual Network varibales

variable "east-vnet01" {
    type = string
  description = "provide the vnet Name"
}

variable "east-vnet-address" {
  type = list(string)
  description = "provide the address prifix"
}

# Subnet varibales

variable "internal_subnet01" {
    type = string
  description = "provide the vnet Name"
}

variable "internal-subnet-address" {
  type = list(string)
  description = "provide the address prifix"
}


variable "externalsubnet" {
    type = string
  description = "provide the vnet Name"
}

variable "external-subnet-address" {
  type = list(string)
  description = "provide the address prifix"
}
variable "azfirewall" { }

variable "azfirewall-subnet-address" {
  type = list(string)
  description = "provide the address prifix"
}

# Firewall Variables
variable "firewall_pip_name" {}
variable "allocation_method" {}
variable "sku" { }

variable "firewall_name" {}