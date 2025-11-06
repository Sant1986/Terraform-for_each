resource "azurerm_storage_account" "storage" {
  for_each = var.storage_map

  name                     = lower(replace("${each.key}store", "/[^a-z0-9]/", ""))
  resource_group_name      = var.rg_output[each.value.rg_key].name
  location                 = var.rg_output[each.value.rg_key].location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.replication
}
