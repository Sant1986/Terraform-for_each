resource "azurerm_network_interface" "nic" {
  for_each = var.nic_map
  name                = each.key
  location            = var.rg_output[each.value.rg_key].location
  resource_group_name = var.rg_output[each.value.rg_key].name

  ip_configuration {
    name                          = "ipconfig"
    subnet_id                     = var.subnet_output[each.value.subnet_key].id
    private_ip_address_allocation = "Dynamic"

    # Attach public IP if pip_key provided
    # dynamic "public_ip_address_id" {
    #   for_each = each.value.pip_key != "" ? [each.value.pip_key] : []
    #   content {
    #     id = var.pip_output[each.value.pip_key].id
    #   }
    # }
  }
}
