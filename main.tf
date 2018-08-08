resource "azurerm_template_deployment" "integration_account" {
  name                = "${format("%v-deployment", var.integration_account_name)}"
  resource_group_name = "${var.resource_group_name}"

  template_body = <<DEPLOY
{
  "$schema": "http://schema.management.azure.com/schemas/2014-04-01-preview/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    "integrationAccountName": {
      "type": "string"
    },
    "sku_name": {
      "type": "string"
    },
    "location": {
      "type": "string"
    }
  },
  "resources": [
    {
      "name": "[parameters('integrationAccountName')]",
      "type": "Microsoft.Logic/integrationAccounts",
      "apiVersion": "2016-06-01",
      "location": "[parameters('location')]",
      "tags": {},
      "properties": {},
      "sku": {
          "name": "[parameters('sku_name')]"
      },
    "resources": []
  }
  ]
}
DEPLOY

  parameters {
    "integrationAccountName" = "${var.integration_account_name}"
    "sku_name"               = "${var.sku}"
    "location"               = "${var.location}"
  }

  deployment_mode = "Incremental"

  lifecycle {
    create_before_destroy = true
  }
}
