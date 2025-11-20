module "resource_group" {
  source = "./resource-group.tf"
}

module "storage" {
  source = "./storage-account.tf"
}

module "keyvault" {
  source = "./keyvault.tf"
}

module "app_insights" {
  source = "./app-insights.tf"
}

module "ai_services" {
  source = "./ai-services.tf"
}

module "nesgen" {
  source = "./nesgen-model.tf"
}
