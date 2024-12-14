module "azure_static_website" {
  source              = "./azure_static_website"
  location            = "eastus"
  resource_group_name = "myuvk1223"

  # Storage Account
  storage_account_name        = "staticwebsite"
  storage_account_tier        = "Standard"
  storage_account_replication = "LRS"
  storage_account_kind        = "StorageV2"
  static_web_index_document   = "index.html"
  static_web_error_document   = "error.html"

}

