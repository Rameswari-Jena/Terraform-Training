# Define the variables needed to create vnet
variable "vnet-name" {
  type        = string
  description = "name of the vnet"
}

variable "subnet-1-name" {
  type        = string
  description = "name of the subnet"
}

variable "subnet-2-name" {
  type        = string
  description = "name of the subnet"
}

variable "location" {
  type        = string
  description = "choose the azure region where you want to create vnet & subnets"
}