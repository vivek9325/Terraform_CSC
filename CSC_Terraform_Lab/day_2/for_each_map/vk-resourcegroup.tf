resource "azurerm_resource_group" "vk-rg" {

    for_each = {

        rg1 = "eastus"
        rg2 = "westus"
        rg3 = "eastus2"
    }

    name = "${each.key}-vk"
    location = each.value



    #name = "vk-rg1"
    #location = "East US"
  
}