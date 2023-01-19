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
  client_id       = "67b94aeb-1f21-4507-b162-64421045708f"
  client_secret   = "GA38Q~Wte13JIGDhJxa6RmfqLd._g_5zfiZF3bAH"
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
