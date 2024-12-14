output "resource_group_id" {

    description = "Resource Group ID"
    value = azurerm_resource_group.vk-rg.id
  
}

output "resource_group_name" {

    description = "Resource Group Name"
    value = azurerm_resource_group.vk-rg.name

}


output "virtual_network_name" {

    description = "Virtual Network Name"
    value = azurerm_virtual_network.vknet[*].name
  
}