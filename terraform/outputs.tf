output "storage_account_id" {
  value = data.azurerm_storage_account.existing_sa.id
}

output "primary_access_key" {
  value     = data.azurerm_storage_account.existing_sa.primary_access_key
  sensitive = true
}