resource "azurerm_cognitive_account" "ca" {
  name                = var.ai_account_name          # keep your variable
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "OpenAI"
  sku_name            = var.ai_sku

  # Prevent recreation if exists
  lifecycle {
    prevent_destroy = true
  }

  depends_on = [azurerm_resource_group.rg]
}

# Notes:
# - If the account already exists, import it using:
# terraform import azurerm_cognitive_account.ca /subscriptions/<sub_id>/resourceGroups/<rg_name>/providers/Microsoft.CognitiveServices/accounts/<account_name>
