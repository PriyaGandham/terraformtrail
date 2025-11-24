resource "azurerm_cognitive_account" "ca" {
  name                = var.ai_account_name       
  location            = var.location
  resource_group_name = var.rg_name
  kind                = "OpenAI"
  sku_name            = var.ai_sku              
}
