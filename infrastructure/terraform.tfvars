rg_name = "rg-dev-terraform"
location = "eastus"

storage_name = "tfstoragedev123"

kv_name = "kv-tf-dev-001"

appinsights_name = "appi-tf-dev"

ai_account_name = "ai-dev-001"
ai_sku          = "S0"

nesgen_model_name = "nesgen-dev-01"

##############################################################
# RBAC User Assignments
##############################################################

user_rbac_assignments = {
  priya = {
    object_id = "USER-OBJECT-ID-1"
    role      = "Contributor"
  }
  srividya = {
    object_id = "USER-OBJECT-ID-2"
    role      = "Reader"
  }
  darshan = {
    object_id = "USER-OBJECT-ID-3"
    role      = "Owner"
  }
}
