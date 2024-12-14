output "resource_group_name" {

    description = "Resource Group name"
    value = var.resource_group_name
  
}

output "resource_group_id" {

    description = "Resource Group name"
    value = azurerm_resource_group.vk_resource_group.id
  
}

output "vnet_name" {

    description = "Vnet name"
    value = var.vnet_name
  
}

output "vnic_name" {

    description = "vnic name"
    value = var.vk_vnic
  
}

output "vm_name" {

    description = "Name of the Virtual Machine"
    value = azurerm_windows_virtual_machine.vk_win.name
  
}

