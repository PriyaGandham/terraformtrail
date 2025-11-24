resource "azurerm_role_assignment" "rg_rbac" {
  for_each            = var.rbac_users
  scope               = azurerm_resource_group.rg.id
  role_definition_name = "Owner"
  principal_id         = each.value

  depends_on = [azurerm_resource_group.rg]
}
