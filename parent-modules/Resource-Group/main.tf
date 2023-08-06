provider "azurerm" {
  features {}
}

module "resource-group" {
  source   = "../../child-modules/Resource-Group"
  rg-name  = var.rg-name
  location = var.location
}