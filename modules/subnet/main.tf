resource "azurerm_subnet" "subnet" {
  for_each             = var.subnet_map
  name                 = each.key
  resource_group_name  = var.vnet_output[each.value.vnet_key].resource_group
  virtual_network_name = var.vnet_output[each.value.vnet_key].name
  address_prefixes     = [each.value.address_prefix]
}
