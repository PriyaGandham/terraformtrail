data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                        = var.kv_name
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  soft_delete_retention_days  = 7
}

resource "azurerm_key_vault_secret" "sample" {
  name         = "connection-string"
  value        = "sample-value"
  key_vault_id = azurerm_key_vault.kv.id
}
