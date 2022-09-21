# Additional information: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan
# Additional Microsoft Docs https://learn.microsoft.com/en-us/azure/app-service/provision-resource-terraform?source=docs


# Create the resource group
resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}"
  location = var.resource_group_location

  tags = {
    "environment" = "value"
    "build" = "Terraform"
  }
}

# Create the Linux App Service Plan
resource "azurerm_service_plan" "appserviceplan" {
  name                = "${var.service_plan_name}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "F1" #Sku
}

# Create the web app, pass in the App Service Plan ID
resource "azurerm_linux_web_app" "webapp" {
  name                  = var.linux_web_app_name
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  service_plan_id       = azurerm_service_plan.appserviceplan.id
  https_only            = true
  site_config { 
    minimum_tls_version = "1.2"
  }
}

#  Deploy code from a public GitHub repo
resource "azurerm_app_service_source_control" "sourcecontrol" {
  app_id             = azurerm_linux_web_app.webapp.id
  repo_url           = "https://github.com/Azure-Samples/nodejs-docs-hello-world"
  branch             = "master"
  use_manual_integration = true
  use_mercurial      = false
}