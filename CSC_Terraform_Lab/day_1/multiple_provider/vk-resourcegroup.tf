resource "azurerm_resource_group" "vkrg1" {

    name = "vkrg1"
    location = "East US"
  
}

resource "azurerm_resource_group" "vkrg2" {

    name = "vkrg2"
    location = "West US"
    provider = azurerm.provider2-westus
  
}