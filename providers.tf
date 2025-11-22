terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# ---------- AWS PROVIDER ----------
provider "aws" {
  region = var.aws_region # ✅ MUST be aws_region, NOT azure_location
}

# ---------- AZURE PROVIDER ----------
provider "azurerm" {
  features {}

  subscription_id = var.azure_subscription_id
  tenant_id       = var.azure_tenant_id
}
