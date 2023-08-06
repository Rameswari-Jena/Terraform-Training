# Define the variables which you want as outputs from resource group to use in another resource creation
output "vnet" {
  value = module.vnet
}