# Windows VMs
resource "azurerm_windows_virtual_machine" "win" {
  for_each = { for k, v in var.vm_map : k => v if lower(v.os_type) == "windows" }

  name                  = each.key
  resource_group_name   = var.rg_output[each.value.rg_key].name
  location              = var.rg_output[each.value.rg_key].location
  size                  = each.value.size
  admin_username        = each.value.admin_user
  admin_password        = each.value.admin_pass
  network_interface_ids = [var.nic_output[each.value.nic_key].id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}

# Linux VMs
resource "azurerm_linux_virtual_machine" "linux" {
  for_each = { for k, v in var.vm_map : k => v if lower(v.os_type) == "linux" }

  name                  = each.key
  resource_group_name   = var.rg_output[each.value.rg_key].name
  location              = var.rg_output[each.value.rg_key].location
  size                  = each.value.size
  admin_username        = each.value.admin_user
  admin_password        = each.value.admin_pass
  network_interface_ids = [var.nic_output[each.value.nic_key].id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
