# Configure the Azure provider

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.93.1"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = "683c85cb-860b-4cc1-bca8-ef6df1ee662d"
}
