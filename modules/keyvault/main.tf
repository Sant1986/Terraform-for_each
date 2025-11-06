# resource "azurerm_key_vault" "kv" {
#   for_each            = var.keyvault_map
#   name                = "${each.key}-kv"
#   location            = var.rg_output[each.value.rg_key].location
#   resource_group_name = var.rg_output[each.value.rg_key].name
#   tenant_id           = data.azurerm_client_config.current.tenant_id
#   sku_name            = each.value.sku_name

#   dynamic "access_policy" {
#     for_each = each.value.enabled ? [1] : []
#     content {
#       tenant_id = data.azurerm_client_config.current.tenant_id
#       object_id = data.azurerm_client_config.current.object_id
#       secret_permissions = ["Get", "List"]
#     }
#   }
# }

# data "azurerm_client_config" "current" {}
