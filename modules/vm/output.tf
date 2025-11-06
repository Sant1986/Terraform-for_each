output "vm_output" {
  value = merge(
    {
      for k, v in azurerm_windows_virtual_machine.win :
      k => {
        name    = v.name
        nic_key = lookup(var.vm_map[k], "nic_key", "")
        os_type = "Windows"
      }
    },
    {
      for k, v in azurerm_linux_virtual_machine.linux :
      k => {
        name    = v.name
        nic_key = lookup(var.vm_map[k], "nic_key", "")
        os_type = "Linux"
      }
    }
  )
}
