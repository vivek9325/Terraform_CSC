variable "business_unit" {

  description = "Business unit Name"
  type        = string
  default     = "HR"

}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default = "vkrggg"
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "eastus"
  validation {
    #condition = var.resource_group_location == "eastus" || var.resource_group_location == "eastus2"
    condition = can(regex("india$", var.resource_group_location))
    error_message = "We only allow Resources to be in westindia and south india location"
  }
}