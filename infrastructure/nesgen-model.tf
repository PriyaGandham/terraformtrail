

resource "azurerm_cognitive_deployment" "nesgen" {
  name                = "nesgen-deployment"
  cognitive_account_id = azurerm_cognitive_account.ca.id
  version_upgrade_option = "OnceNewDefaultVersionAvailable"

  model {
    name    = "gpt-35-turbo"        # Supported model
    format  = "OpenAI"
    version = "2023-07-01-preview"  # Supported version for Azure OpenAI
  }

  scale {
    type     = "Standard"            # Required for Azure OpenAI
    capacity = 1
  }

  depends_on = [
    azurerm_cognitive_account.ca
  ]
}

# Notes:
# - Check the supported models in your region: eastus
#   https://learn.microsoft.com/en-us/azure/cognitive-services/openai/overview
# - Update 'name' and 'version' if we want another supported model.
