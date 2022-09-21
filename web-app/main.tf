# Terraform Registry https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app

# Resources
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_windows_web_app" "example" {
  name                = var.web_app_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}