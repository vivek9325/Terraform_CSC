locals {

    rg_name = "${var.business_unit}-${var.environment}-${var.resource_group_name}-vk"
    owner = "vivek"
    server_name = "dev"

    common_tags = {
        Owner = local.owner
        env = local.server_name
    }

    vnet_address_space = (var.environment != "dev" ? var.vnet_address_space_dev : var.vnet_address_space_all)

    #vnet_address_space = (var.environment == "dev" ? var.vnet_address_space_dev : var.vnet_address_space_all)

}