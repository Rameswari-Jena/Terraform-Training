terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform-training-Demo-RG"
    storage_account_name = "tftrainingstatefile"
    container_name       = "statefiles"
    key                  = "vnet.tfstate"
  }
}