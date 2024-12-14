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
   subscription_id = "#######"

  
}

provider "azurerm" {

    features {
      
    }

    alias = "provider2-westus"
     subscription_id = "bfd8881a-6cc5-4a55-81d7-73350c1acc1f"
  
}