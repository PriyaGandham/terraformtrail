variable "location" {}
variable "rg_name" {}
variable "storage_name" {}
variable "kv_name" {}
variable "appinsights_name" {}
variable "ai_account_name" {}
variable "nesgen_model_name" {}
variable "ai_sku" {
  description = "SKU for the Azure Cognitive Account "
  type        = string
  default     = "S0"
}
variable "tags" {
  type = map(string)
  default = {
    env = "dev"
  }
}

##############################################################
# RBAC Variables
##############################################################

variable "user_rbac_assignments" {
  description = "List of users/groups with RBAC roles"
  type = map(object({
    object_id = string
    role      = string
  }))
}

