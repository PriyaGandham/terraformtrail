output "resource_group" { value = azurerm_resource_group.rg.name }
output "storage_account" { value = azurerm_storage_account.sa.name }
output "keyvault_uri" { value = azurerm_key_vault.kv.vault_uri }
output "appinsights_key" {
  value     = azurerm_application_insights.appi.instrumentation_key
  sensitive = true
}
output "azureai_endpoint" {
  value = (
    var.create_cognitive_account ?
    azurerm_cognitive_account.azureai[0].endpoint :
    null
  )
}

output "azureai_key" {
  value = (
    var.create_cognitive_account ?
    azurerm_cognitive_account.azureai[0].primary_access_key :
    null
  )
  sensitive = true
}

output "nesgen_model_id" {
  value = azurerm_cognitive_deployment.nesgen.id
}
