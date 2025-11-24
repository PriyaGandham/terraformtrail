resource "azurerm_application_insights" "appi" {
  name                = var.appi_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  application_type    = "web"
  tags = {
    env = "dev"
  }

  # Keep workspace_id if already set or import resource
  # terraform import azurerm_application_insights.appi /subscriptions/<SUB_ID>/resourceGroups/rg-dev-terraform/providers/Microsoft.Insights/components/<APP_INSIGHTS_NAME>
}


