resource "azurerm_resource_group" "vk-rg" {

  name     = local.rg_name
  location = var.resource_group_location
  tags = local.common_tags
}