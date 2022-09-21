resource "rg_prefix" "rg_name" {
    rg_prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
    name     = "${var.resource_group_name}"
    location = var.resource_group_location
}