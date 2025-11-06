output "nic_output" {
  value = {
    for k, v in azurerm_network_interface.nic : k => {
      id       = v.id
      # get private IP from first ip_configuration
      private_ip = try(v.ip_configuration[0].private_ip_address, null)
      # retain which pip_key was used (from input map)
      pip_key = lookup(var.nic_map[k], "pip_key", "")
    }
  }
}
