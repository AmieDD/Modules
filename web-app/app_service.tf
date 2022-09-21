resource "azurerm_service_plan" "example" {
  name                = "${var.service_plan_name}-plan"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku_name            = "P1v2"
  os_type             = "Windows"

  sku {
    tier = "${var.plan_tier}"
    size = "${var.plan_sku}"
  }
}