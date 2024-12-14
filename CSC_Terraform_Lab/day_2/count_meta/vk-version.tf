terraform {
  required_version = ">=0.15"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }
}

provider "azurerm" {
  # Configuration options

  features {
    
  }
subscription_id = "########"

}