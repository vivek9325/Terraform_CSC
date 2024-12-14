locals {

    resource_name = var.resource_group_name
    vnet_address_space = (var.common_tags=="dev" ? var.vnet_address_space_dev : var.vnet_address_space_prod)



}