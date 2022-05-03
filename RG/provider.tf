terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.4.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "100d644a-87d9-447d-9e30-41dbea1dc20f"
  client_id       = "51a291e9-3b5e-4951-sdfasdf-8e72ef451a93"
  client_secret   = "o-C7Q~asdfsadfasdfas~K"
  tenant_id       = "cdc1d3d2-2bb9-498f-8206-21ac0b3ffa65"

}