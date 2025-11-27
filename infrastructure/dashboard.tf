resource "azurerm_portal_dashboard" "appi_dashboard" {
  name                = "appi-${var.env}-dashboard"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
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
              rowSpan = 3
              colSpan = 3
            }
            metadata = {
              inputs = [
                {
                  name  = "ComponentId"
                  value = azurerm_application_insights.appi.id
                }
              ]
              type = "Extension/HubsExtension/PartType/MonitorChartPart"
              settings = {
                content = {
                  chartType = "LineChart"
                  title     = "Server Response Time"
                  metricQueries = [
                    {
                      id               = 0
                      metricNamespace  = "microsoft.insights/components"
                      metricName       = "requests/duration"
                      aggregation      = "Avg"
                    }
                  ]
                }
              }
            }
          }
        }
      }
    }
    metadata = {
      model = {
        timeRange = {
          value = {
            relative = {
              duration = 24
              timeUnit = 1
            }
          }
        }
      }
    }
  })
}
