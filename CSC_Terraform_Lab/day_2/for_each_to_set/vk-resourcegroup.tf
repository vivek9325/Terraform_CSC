resource "azurerm_resource_group" "vk-rg" {

    for_each = toset([ "eastus","westus","eastus2" ])

    name = "${each.value}-vk"
    location = each.key
  
}