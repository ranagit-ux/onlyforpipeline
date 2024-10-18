resource "azurerm_subnet" "testsubnet" {
for_each = var.subnet
  name                 = each.value.name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
  resource_group_name  = each.value.resource_group_name
}