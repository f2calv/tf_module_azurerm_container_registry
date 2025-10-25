//https://www.terraform.io/docs/providers/azurerm/r/container_registry.html
resource "azurerm_container_registry" "this" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = var.admin_enabled
  //georeplication_locations = ["East US", "West Europe"]
  tags = var.tags
}