# Define the variables needed to create resource group
variable "rg-name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "choose the azure region where you want to create resource group"
}