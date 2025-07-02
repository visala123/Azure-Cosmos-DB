terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestorageV"
    container_name       = "tfstate"
    key                  = "cosmosdb.terraform.tfstate"
  }
}
