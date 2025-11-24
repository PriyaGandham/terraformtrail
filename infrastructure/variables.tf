# variables.tf

# Azure Cognitive Services Account Name
variable "ai_account_name" {
  description = "Name of the Azure Cognitive Services account"
  type        = string
}

# Azure region/location
variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "eastus"
}

# Cognitive Services SKU
variable "ai_sku" {
  description = "SKU for Cognitive Services account"
  type        = string
  default     = "S0"
}

# Key Vault name
variable "kv_name" {
  description = "Name of the Key Vault"
  type        = string
}

# Application Insights name
variable "appi_name" {
  description = "Name of the Application Insights resource"
  type        = string
}

# RBAC users map (username => object_id)
variable "rbac_users" {
  description = "Map of users and their Object IDs for role assignment"
  type        = map(string)
}
