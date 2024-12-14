terraform {
  required_version = ">=0.15"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
subscription_id = "###########"

}