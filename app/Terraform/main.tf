terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">3.0"
    }
  }
}

provider "azurerm" {
    features {}

}

#Resouce Group
resource "azurerm_resource_group" "main" {
    name = var.resource_group_name
    location = var.location
}

#Azure Registry 
resource "azurerm_container_registry" "acr" {
    name = var.acr_name
    resource_group_name = azurerm_resource_group.main.name
    location = azurerm_resource_group.main.location
    sku = "Basic"
    admin_enabled = true
}