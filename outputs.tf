output "resource_group_name" {
  description = "The resource group name."
  value       = "${azurerm_template_deployment.integration_account.resource_group_name}"
}

output "integration_account_name" {
  description = "The integration account name"
  value       = "${var.integration_account_name}"
}
