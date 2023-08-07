# Define the variables of vnet & subnets which we want as outputs, to use it with other modules

output "vnet-name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet-id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet-1-name" {
  value = azurerm_subnet.subnet-1.name
}

output "subnet-1-id" {
  value = azurerm_subnet.subnet-1.id
}

output "subnet-2-name" {
  value = azurerm_subnet.subnet-2.name
}

output "subnet-2-id" {
  value = azurerm_subnet.subnet-2.id
}

output "nic-id" {
  value = azurerm_network_interface.nic.id
}