output "storage_output" {
  value = {
    for k, v in azurerm_storage_account.storage : k => {
      name                  = v.name
      primary_blob_endpoint = v.primary_blob_endpoint
    }
  }
}
