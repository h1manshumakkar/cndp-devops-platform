terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "cndptfstate123"
    container_name       = "tfstate"
    key                  = "cndp-devops.tfstate"
  }
}