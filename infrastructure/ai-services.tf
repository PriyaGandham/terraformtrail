resource "azurerm_cognitive_account" "azureai" {
  name                = var.ai_account_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "CognitiveServices"
  sku_name            = "S0"
  tags                = var.tags
}
