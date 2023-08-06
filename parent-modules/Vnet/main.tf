provider "azurerm" {
  features {}
}

module "vnet" {
  source        = "../../child-modules/Vnet"
  vnet-name     = var.vnet-name
  subnet-1-name = var.subnet-1-name
  subnet-2-name = var.subnet-2-name
  location      = var.location
}