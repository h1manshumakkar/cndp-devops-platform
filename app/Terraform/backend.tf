terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-backend-rg"
    storage_account_name = "cndptfstate"
    container_name       = "tfstate"
    key                  = "cndp-devops.tfstate"
  }
}