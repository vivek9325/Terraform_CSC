variable "location" {

    description = "Location of the resources"
    type = string
  
}

variable "resource_group_name" {

    description = "Name of the resource group"
    type = string
  
}

variable "vnet_name" {

    description = "Name of the Virtual network group"
    type = string
  
}

variable "ip_address" {

    description = "Name of the IP Address"
    type = string
  
}

variable "vk_subnet_name" {

    description = "Name of the Subnet"
    type = string
  
}

variable "vk_vnic" {

    description = "Name of the network interface"
    type = string
  
}

variable "common_tags" {

    description = "Tags"
    type = string
  
}

variable "vnet_address_space_prod" {

    description = "Address space for prod"
    type = list(string)
  
}

variable "vnet_address_space_dev" {

    description = "Address space for dev"
    type = list(string)
  
}

variable "allocation_type" {

    description = "Allocation Type"
    type = string
  
}