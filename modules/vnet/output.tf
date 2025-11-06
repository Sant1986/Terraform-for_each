output "vnet_output" {
  value = {
    for k, v in azurerm_virtual_network.vnet : k => {
      id               = v.id
      name             = v.name
      resource_group   = v.resource_group_name
      location         = v.location
    }
  }
}
