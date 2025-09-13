variable "resource_group_name_3" {
  type = string
  description = "The name of the third resource group"
}

variable "vnet_name" {
  type = list(string)
  description = "The name of the virtual network"
}

variable "vnet_address_space" {
  type = list(string)
  description = "The address space of the virtual network"          
  
}