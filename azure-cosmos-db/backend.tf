terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestoragev"
    container_name       = "tfstate"
    key                  = "cosmosdb.terraform.tfstate"
  }
}
