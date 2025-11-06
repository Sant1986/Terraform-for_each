# output "keyvault_output" {
#   value = {
#     for k, v in azurerm_key_vault.kv : k => {
#       name      = v.name
#       vault_uri = v.vault_uri
#     }
#   }
# }
