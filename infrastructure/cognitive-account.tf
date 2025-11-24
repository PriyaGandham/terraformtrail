resource "azurerm_cognitive_account" "ca" {
  name                = var.ai_account_name   # e.g., "ai-dev-001"
  location            = var.location          # e.g., "eastus"
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "OpenAI"             # must be "OpenAI" for Azure OpenAI services
  sku_name            = var.ai_sku            # must be supported SKU, usually "S0"
  
  # Ensure network access is allowed
  public_network_access_enabled = true
  local_auth_enabled            = true

  tags = var.tags

  depends_on = [azurerm_resource_group.rg]
}

# Notes:
# - If the account already exists, import it using:
# terraform import azurerm_cognitive_account.ca /subscriptions/<sub_id>/resourceGroups/<rg_name>/providers/Microsoft.CognitiveServices/accounts/<account_name>
