rg_name             = "rg-dev-terraform"
location            = "eastus"

storage_name        = "tfstoragedev123"

kv_name             = "kv-tf-devpri-001-unique123"

appinsights_name    = "appi-tf-dev"

ai_account_name     = "ai-dev-001"

nesgen_model_name   = "nesgen-dev-01"


##############################################################
# RBAC User Assignments
##############################################################

user_rbac_assignments = {
"Gandham Priya" = {
    object_id = "e1f935d8-91ba-4a81-a325-acf553d9fb5b"
    role      = "Owner"
  }
  userA = {
    object_id = "a6bb7c8b-8dda-42bd-b73e-ff691b2e4432"
    role      = "Contributor"
  }
}
