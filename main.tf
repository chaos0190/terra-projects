terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.10.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "gen-rgp"
        storage_account_name = "chaosgenstore1990"
        container_name       = "terra"
        key                  = "terraform.tfstate"
        access_key = "sp=racwl&st=2023-02-27T21:14:46Z&se=2023-03-07T05:14:46Z&spr=https&sv=2021-06-08&sr=c&sig=diwGE%2FoJ3PxvEc48gw%2Fh3Sb9IWCtM2xSpWc36UNY5Bw%3D"
    }

}

provider "azurerm" {
  features {}
}

module "name" {
  source = "./modules/general"
}