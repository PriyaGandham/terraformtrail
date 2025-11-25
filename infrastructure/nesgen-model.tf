resource "azurerm_cognitive_deployment" "nesgen" {
  name                   = "nesgen-deployment"
  cognitive_account_id   = azurerm_cognitive_account.ca.id
  version_upgrade_option = "OnceNewDefaultVersionAvailable"

  model {
    format  = "OpenAI"
    name    = "gpt-4o"             # replace with a supported model name for your account
    version = "2024-08-06"        # keep or adjust if required
  }

  scale {
    type     = "Standard"
    capacity = 1
  }
}


# Notes:
# - Check the supported models in your region: eastus
#   https://learn.microsoft.com/en-us/azure/cognitive-services/openai/overview
# - Update 'name' and 'version' if we want another supported model.
