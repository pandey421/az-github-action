/*output "storage_account_id" {
  value = data.azurerm_storage_account.existing_sa.id
}

output "primary_access_key" {
  value     = data.azurerm_storage_account.existing_sa.primary_access_key
  sensitive = true
}*/

output "app_service_url" {
  value = data.azurerm_linux_web_app.existing_app.default_hostname
}

output "outbound_ips" {
  value = data.azurerm_linux_web_app.existing_app.outbound_ip_addresses
}