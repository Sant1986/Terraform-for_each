output "subnet_output" {
  value = {
    for k, v in azurerm_subnet.subnet : k => {
      id = v.id
    }
  }
}
