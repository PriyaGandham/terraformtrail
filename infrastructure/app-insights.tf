resource "azurerm_application_insights" "appi" {
  name                = var.appinsights_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  application_type    = "web"

  # IMPORTANT — existing workspace must remain
  workspace_id        = "/subscriptions/054ee7c6-c56d-4907-909c-d82da0c2c1b4/resourceGroups/ai_appi-tf-devppp_b5a55b75-4681-4ba1-b388-79d2b566ca03_managed/providers/Microsoft.OperationalInsights/workspaces/managed-appi-tf-devPpP-ws"

  tags = var.tags
}

