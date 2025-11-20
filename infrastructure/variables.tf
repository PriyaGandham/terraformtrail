variable "location" { default = "centralindia" }
variable "rg_name" {}
variable "storage_name" {}
variable "kv_name" {}
variable "appinsights_name" {}
variable "ai_account_name" {}
variable "nesgen_model_name" {}
variable "tags" { type = map(string) default = { env = "dev" } }
