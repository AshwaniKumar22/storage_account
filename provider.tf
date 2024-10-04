terraform {
    required_providers {
      azurerm = {
        source="hashicorp/azurerm"
        version = "3.116.0"
      }
    }
    backend "azurerm" {
      resource_group_name = "Pipeline-rg"
      storage_account_name = "pipelinestrg"
      container_name = "testcontainer"
      key="test.terraform.tfstate"
    }
}


provider "azurerm"{
    features {}
}