variable "app_service_plan_id" {
  type        = string
  description = "The ID of the App Service Plan where the web app should be created."
  default     = ""
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

variable service_plan_name {
  type        = string
  description = "The name of the service plan."
  default     = "serviceplan"
}

variable "linux_web_app_name" { 
  type        = string
  description = "The name of the web app."
  default     = "linuxwebapp"
}