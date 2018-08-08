
## Create an Hybrid Connection in Azure

This terraform module deploys an empty Integration Account in Azure.

### Usage

```hcl

resource "azurerm_resource_group" "rsg" {
  name     = "my-integration-rg"
  location = "westeurope"
}

module "integration_account" {
  source                   = "git::github.com/InnovationNorway/terraform-azurerm-integration-account"
  resource_group_name      = "${azurerm_resource_group.rsg.name}"
  location                 = "${azurerm_resource_group.rsg.location}"
  integration_account_name = "my-integration-account"
  sku                      = "Free"
}

```

### Inputs

### resource_group_name
Specifies the name of the resource group where the resource is to be created.

### location
Specifies the supported Azure location where the resource is to be created.

### integration_account_name
Specifies the name of the integration account.

### sku_name
Specifies which sku the integration account should use, can be either Free or Standard


## Outputs

### resource_group_name
The name of the resource group where the resource was created.

### integration_account_name
The name of the created integration account.
