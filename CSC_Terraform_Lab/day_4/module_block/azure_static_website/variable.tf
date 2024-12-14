variable "resource_group_name" {

    description = "Name of resource group"
    type = string
  
}

variable "location" {

    description = "Azure Region"
    type = string
  
}

variable "storage_account_name" {

    description = "Storage Account Name"
    type = string
  
}

variable "storage_account_tier" {

    description = "Storage Account Tier"
    type = string
  
}

variable "storage_account_replication" {

    description = "Storage Account Replication"
    type = string
  
}

variable "storage_account_kind" {

    description = "Storage Account Kind"
    type = string
  
}

variable "static_web_index_document" {

    description = "Index file name of static website"
    type = string
  
}

variable "static_web_error_document" {

    description = "Error Document file"
    type = string
  
}