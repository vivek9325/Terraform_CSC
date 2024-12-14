terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }

  backend "azurerm" {

    resource_group_name = "vk-rg"
    storage_account_name = "terraformstate1312"
    container_name = "vm-tfstatefiles"
    key = "terraform.tfstatefiles"
    
  }



}

provider "azurerm" {
  # Configuration options

  features {
    
  }
  subscription_id = "########"
}