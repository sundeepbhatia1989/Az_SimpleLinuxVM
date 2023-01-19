terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "81d74218-6f1e-4599-9ff5-eee7b8bbf6e0"
  client_id       = "5b1ef92d-fb01-4acb-8e7b-6d609c821130"
  client_secret   = "ds98Q~4jCIdOjbieEUlIDF4-Xbw1mrL3~-J7UcWq"
  tenant_id       = "af2262e1-ebf8-45fc-bb9e-0d0f9b0b4ec1"
}


# AUTH - Authenticating to Azure using a Service Principal and a Client Secret
# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "myterraformgroup" {
    name     = "myResourceGroup"
    location = "eastus"

    tags = {
        environment = "Terraform Demo"
    }
}
