variable "integration_account_name" {
  description = "The name of the integration account"
}

variable "location" {
  description = "Specifies the supported Azure location where the resource is to be created."
}

variable "resource_group_name" {
  description = "Specifies the name of the resource group where the resource is to be created."
}

variable "sku_name" {
  description = "Specifies which sku the integration account should use, can be either Free or Standard"
}
