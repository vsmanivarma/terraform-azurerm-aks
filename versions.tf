terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.29.0"
    }
        random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "azurerm" {
  features {}
client_id = "402596b9-cf1a-4626-b741-8e270ffcf131"
tenant_id = "a2ac977c-b09a-474c-8cc0-8159d33c5a34"
client_secret = "hwe8Q~H~7HW52Yrw7UUqqpx6Dn~VAcN-uQ3myb_."
subscription_id = "9466e67f-55ff-4afa-ae7f-17d5881721e1"
}