output "resource_groups" {
  description = "All Resource Groups"
  value = module.rg.rg_output
}

output "virtual_networks" {
  description = "All VNets created"
  value = module.vnet.vnet_output
}

output "subnets" {
  description = "All Subnets created"
  value = module.subnet.subnet_output
}

output "public_ips" {
  description = "All Public IPs"
  value = module.pip.pip_output
}

output "network_interfaces" {
  description = "All NICs"
  value = module.nic.nic_output
}

output "storage_accounts" {
  description = "All Storage Accounts"
  value = {
    for sa, val in module.storage.storage_output : sa => {
      name = val.name
      primary_blob_endpoint = val.primary_blob_endpoint
    }
  }
}

output "virtual_machines" {
  description = "All VMs with public IPs (if any)"
  value = module.vm.vm_output
}

# output "key_vaults" {
#   description = "All Key Vaults"
#   value = module.keyvault.keyvault_output
# }