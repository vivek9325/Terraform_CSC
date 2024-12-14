resource "azurerm_resource_group" "vk-rg" {

    count = 3
    name = "vk-rg1-${count.index}"
    location = "East US"
  
}