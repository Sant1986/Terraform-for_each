output "rg_output" {
  value = {
    for k, v in azurerm_resource_group.rg : k => {
      name     = v.name
      location = v.location
    }
  }
}
