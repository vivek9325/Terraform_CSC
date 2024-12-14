terraform {
  required_version=">0.15"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.13.0"
    }
     random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }

  backend "azurerm" {

    resource_group_name = "vk-rg"
    storage_account_name = "terraformstate1312"
    container_name = "tfstatefiles"
    key = "terraform.tfstate"
    
  }



}