resource "azurerm_cognitive_deployment" "nesgen" {
  name                 = var.nesgen_model_name
  cognitive_account_id = azurerm_cognitive_account.azureai.id
  model_format         = "OpenAI"
  model_name           = "gpt-4o-mini"
  scale_type           = "Standard"
}
