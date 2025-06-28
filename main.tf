terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "d10add14-52cf-4085-b496-a8ce3bb48a4a"
  client_secret   = "MHb8Q~QFZq.UO5LbQvf~fP3TrKsZk3LxCR1d7aFA"
  tenant_id       = "f37fc6df-9a73-4dd7-801f-e13a6ce0d966"
  subscription_id = "ff277d6e-ee0f-41c0-b42d-522f4cdfccd6"
}