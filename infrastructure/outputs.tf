output "resource_group" { value = azurerm_resource_group.rg.name }
output "storage_account" { value = azurerm_storage_account.sa.name }
output "keyvault_uri" { value = azurerm_key_vault.kv.vault_uri }
output "appinsights_key" { value = azurerm_application_insights.appi.instrumentation_key }
output "azureai_endpoint" { value = azurerm_cognitive_account.azureai.endpoint }
