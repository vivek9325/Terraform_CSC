variable "business_unit" {

  description = "Business unit Name"
  type        = string
  default     = "hr"

}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default = "myrg2"
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "eastus"
  /*validation {
    #condition = var.resource_group_location == "eastus" || var.resource_group_location == "eastus2"
    condition = can(regex("india$", var.resource_group_location))
    error_message = "We only allow Resources to be in westindia and south india location"
  }*/
}

variable "mssql-server-name" {

    description="MSSQL Server Information"
    type = string
  
}

variable "mssql-username" {

    description = "Username information"
    type = string
    sensitive = true
  
}

variable "mssql-password" {
  
  description = "password information"
  type=string
  sensitive = true

}

variable "mssql-storage-mb"{
    
    description = "Azure MSSQL Storage size"
    type = number
}

variable "mssql-auto-grow-enable" {

    description = "Azure MSSQL Database Size increase"
    type = bool
  
}

variable "vnet_address_space_dev" {

  description = "Virtual Address for dev"
  type = list(string)
  default = ["10.0.0.0/16"]

}

variable "vnet_address_space_all" {

  description = "Virtual Address Space for All"
  type = list(string)
  default = ["10.1.0.0/16", "10.2.0.0/16", "10.3.0.0/16"]

}