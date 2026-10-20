# 1. Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

/*data "azurerm_storage_account" "existing_sa" {
  name                = "ashustorage"         # Exact name in Azure
  resource_group_name = "ashu-resource-group" # RG where it lives
}*/

data "azurerm_linux_web_app" "existing_app" {
  name                = "test-app-1"
  resource_group_name = "rg-app-services"
}
