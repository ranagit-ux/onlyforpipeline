resource "azurerm_virtual_network" "virtualtest" {
  for_each = var.vnetwork
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  address_space       = each.value.address_space
}