resource "azurerm_container_registry" "acr" {
  name                     = "containerRegistry1"
  resource_group_name      = "${azurerm_resource_group.aks.name}"
  location                 = "${azurerm_resource_group.aks.location}"
  sku                      = "Premium"
  admin_enabled            = false
  georeplication_locations = ["Australia East", "Australia West"]
}