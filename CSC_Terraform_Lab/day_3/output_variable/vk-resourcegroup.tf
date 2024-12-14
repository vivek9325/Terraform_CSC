resource "azurerm_resource_group" "vk-rg" {

  name     = "${var.business_unit}-${var.environment}-${var.resource_group_name}"
  location = var.resource_group_location

}