#create Vnet in a resource group in azure cloud

data "terraform_remote_state" "resource-group" {
  backend = "azurerm"
  config = {
    resource_group_name  = "Terraform-training-Demo-RG"
    storage_account_name = "tftrainingstatefile"
    container_name       = "statefiles"
    key                  = "rg.tfstate"
  }
}

resource "azurerm_virtual_network" "vnet" {
    name                = var.vnet-name
    location            = var.location
    resource_group_name = data.terraform_remote_state.resource-group.outputs.rg.rg_name
    address_space       = ["10.0.0.0/16"]

    tags = {
      purpose = "terraform-training-demo"
    }
}

resource "azurerm_subnet" "subnet-1" {
    name                 = var.subnet-1-name
    resource_group_name  = data.terraform_remote_state.resource-group.outputs.rg.rg_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet-2" {
    name                 = var.subnet-2-name
    resource_group_name  = data.terraform_remote_state.resource-group.outputs.rg.rg_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["10.0.2.0/24"]
}