resource "azurerm_public_ip" "pip" {
  for_each            = var.pip_map
  name                = each.key
  resource_group_name = var.rg_output[each.value.rg_key].name
  location            = var.rg_output[each.value.rg_key].location
  allocation_method   = "Static"
  sku                 = each.value.sku
}
