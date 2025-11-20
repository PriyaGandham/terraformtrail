##############################################################
# RBAC for Multiple Users (Reader / Contributor / Owner)
##############################################################

# Loop through all users provided in terraform.tfvars
resource "azurerm_role_assignment" "rg_rbac" {
  for_each = var.user_rbac_assignments

  scope                = azurerm_resource_group.rg.id
  role_definition_name = each.value.role      # Reader / Contributor / Owner
  principal_id         = each.value.object_id # User or Group Object ID
}
