resource "azurerm_resource_group" "third-rg" {
  name     = var.resource_group_name_3
  location = "East US"
}

resource "azurerm_virtual_network" "Demo" {
  count = 2
  name = var.vnet_name[count.index]
  resource_group_name = azurerm_resource_group.third-rg.name
  address_space = [var.vnet_address_space[count.index]]
  location = azurerm_resource_group.third-rg.location
  tags = {
    environment = "Demo"
  }
  
}