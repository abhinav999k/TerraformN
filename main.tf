terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  cloud {
    organization = "helcrow"
    workspaces {
      name = "TerrafromN"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "name_length" {
  description = "The number of words in the pet name"
  default     = "3"
}

resource "random_pet" "pet_name" {
  length    = var.name_length
  separator = "-"
}

#output
output "pet_name" {
  value = random_pet.pet_name.id
}
