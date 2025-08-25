terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "arub1-backend"
    storage_account_name = "arub1stgback"
    container_name       = "arub1container"
    key                  = "new.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "fadfa500-48fa-4d7d-ae72-215103d56b2f"
}
