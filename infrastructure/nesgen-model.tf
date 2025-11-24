resource "azurerm_cognitive_deployment" "nesgen" {
  name                 = "nesgen-deployment"
  cognitive_account_id = azurerm_cognitive_account.ca.id

  model {
    format  = "OpenAI"
    name    = "gpt-4o-mini"
    version = "2024-08-06" # check correct version
  }

  scale {
    type = "Standard"
    capacity = 1
  }
}

