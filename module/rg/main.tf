resource "azurerm_resource_group" "test" {
  for_each = var.rgmn
  name     = each.value.name
  location = each.value.location
}
