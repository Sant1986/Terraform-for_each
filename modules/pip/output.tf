output "pip_output" {
  value = {
    for k, v in azurerm_public_ip.pip : k => {
      id         = v.id
      ip_address = v.ip_address
    }
  }
}
