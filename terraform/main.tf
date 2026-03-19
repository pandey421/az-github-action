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

data "azurerm_storage_account" "existing_sa" {
  name                = "ashustorage"         # Exact name in Azure
  resource_group_name = "ashu-resource-group" # RG where it lives
}
