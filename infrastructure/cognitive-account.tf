resource "azurerm_cognitive_account" "ca" {
  name                = var.ai_account_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "OpenAI"
  sku_name            = var.ai_sku

  depends_on = [azurerm_resource_group.rg]
}

