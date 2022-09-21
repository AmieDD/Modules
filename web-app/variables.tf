variable "web_app_name" {
  type        = string
  description = "The name of the web app."
  default     = "webapp"
}

variable "service_plan_name" {
  type        = string
  description = "Location of azure resource group."
  default     = "appserviceplan"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the web app should be created."
  default     = "myResourceGroup"
}

variable "resource_group_location" {
  type        = string
  description = "The location/region where the resource group should be created."
  default     = "westus"
}
  
variable "service_plan_name" {
  type        = string
  description = "The name of the service plan."
  default     = "serviceplan"
}

variable "plan_tier" {
  type        = string
  description = "The tier of the service plan."
  default     = "PremiumV2"
}

variable "plan_sku" {
  type        = string
  description = "The SKU of the service plan."
  default     = "P1v2"
}
  