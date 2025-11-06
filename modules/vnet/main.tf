resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnet_map
  name                = each.key
  address_space       = each.value.address_space
  location            = var.rg_output[each.value.rg_key].location
  resource_group_name = var.rg_output[each.value.rg_key].name
}
