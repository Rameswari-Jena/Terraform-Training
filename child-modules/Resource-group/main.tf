#create resource group in azure cloud
resource "azurerm_resource_group" "rg" {
  name     = var.rg-name
  location = var.loaction
}