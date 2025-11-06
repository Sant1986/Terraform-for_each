resource "azurerm_resource_group" "rg" {
  for_each = var.rg_map
  name     = each.key
  location = each.value.location
}
