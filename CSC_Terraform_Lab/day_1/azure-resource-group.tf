# Terraform Setting Block
terraform {
  required_version = ">=1.0.0"  
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

  subscription_id = "##########"
}

resource "azurerm_resource_group" "vk_demo_rg1" {

    name = "vk_demo_rg1"
    location = "East US"
  
}