resource "azurerm_application_insights" "appi" {
  name                = "appi-tf-devPpP"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  application_type    = "web"
  tags = {
    env = "dev"
  }

  # Keep workspace_id if already set
  # workspace_id = "/subscriptions/.../resourceGroups/.../workspaces/..."  

  depends_on = [azurerm_resource_group.rg]
}

