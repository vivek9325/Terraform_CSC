terraform {
  required_version = ">=0.15"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

provider "azurerm" {
  # Configuration options

  features {

  }
  subscription_id = "######"

}

resource "random_string" "vkrandom" {

  length  = 16
  upper   = false
  special = false
  numeric = false

}