terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.59.0"
    }
  }
}

# Create a resource group
resource "azurerm_resource_group" "azure_rg" {
  name     =  var.rgname
  location =  var.location
}


provider "azurerm" {
  features {}
}