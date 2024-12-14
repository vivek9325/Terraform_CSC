resource "azurerm_mssql_server" "mssql-server" {
  name = "${var.business_unit}-${var.environment}-${var.mssql-server-name}"
  resource_group_name = azurerm_resource_group.vk-rg.name
  location = var.resource_group_location
  version = "12.0"
  administrator_login = var.mssql-username
  administrator_login_password = var.mssql-password
  #ssl_enforcement_enabled = false
  
}