variable "resource_group_name_prefix" {
  type        = string
  description = "The prefix of the resource group name."
  default     = "rg"
}

variable "resource_group_location" {
  type        = string
  description = "The location/region where the resource group should be created."
  default     = "westus"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the web app should be created."
  default     = "myResourceGroup"
}
  
  