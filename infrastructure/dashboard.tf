resource "azurerm_portal_dashboard" "appi_dashboard" {
  name                = "appi-${var.env}-dashboard"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  tags                = var.tags

  dashboard_properties = jsonencode({
    lenses = {
      "0" = {
        order = 0
        parts = {
          "0" = {
            position = {
              x = 0
              y = 0
              rowSpan = 4
              colSpan = 4
            }
            metadata = {
              inputs = [
                {
                  name  = "ComponentId"
                  value = azurerm_application_insights.appi.id
                }
              ]
              type = "Extension/AppInsightsExtension/PartType/AppMapPart"
            }
          }

          "1" = {
            position = {
              x = 4
              y = 0
              rowSpan = 4
              colSpan  = 4
            }
            metadata = {
              inputs = [
                {
                  name  = "ComponentId"
                  value = azurerm_application_insights.appi.id
                }
              ]
              type = "Extension/AppInsightsExtension/PartType/FailuresOverviewBlade"
            }
          }

          "2" = {
            position = {
              x = 0
              y = 4
              rowSpan = 4
              colSpan = 4
            }
            metadata = {
              inputs = [
                {
                  name  = "ComponentId"
                  value = azurerm_application_insights.appi.id
                }
              ]
              type = "Extension/AppInsightsExtension/PartType/PerformanceBlade"
            }
          }

          "3" = {
            position = {
              x = 4
              y = 4
              rowSpan = 4
              colSpan = 4
            }
            metadata = {
              inputs = [
                {
                  name  = "ComponentId"
                  value = azurerm_application_insights.appi.id
                }
              ]
              type = "Extension/AppInsightsExtension/PartType/UsageOverviewBlade"
            }
          }

        }
      }
    }
    metadata = {
      model = "portal-dashboard/v1"
    }
  })
}
