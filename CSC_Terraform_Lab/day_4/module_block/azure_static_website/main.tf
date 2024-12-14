provider "azurerm" {
  # Configuration options
  features{
    
  }

  subscription_id = "######"

}

resource "random_string" "myrandom" {

  length = 6
  numeric = false
  upper = false
  special = false
  
}

resource "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
  location = var.location
  
}

resource "azurerm_storage_account" "storage_account" {

  name = "${var.storage_account_name}${random_string.myrandom.id}"
  resource_group_name = azurerm_resource_group.resource_group.name
  location = var.location
  account_tier = var.storage_account_tier
  account_replication_type = var.storage_account_replication
  account_kind = var.storage_account_kind

  static_website {

    index_document = var.static_web_index_document
    error_404_document = var.static_web_error_document
    
  }





  
}