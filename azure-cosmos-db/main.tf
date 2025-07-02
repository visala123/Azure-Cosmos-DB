resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_user_assigned_identity" "example" {
  name                = var.user_assigned_identity_name
  location            = var.location
  resource_group_name = var.resource_group_name
  depends_on = [azurerm_resource_group.rg]
}

resource "azurerm_cosmosdb_account" "cosmos" {
  name                = var.cosmosdb_name
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = var.offer_type
  kind                = var.kind

  consistency_policy {
    consistency_level       = var.consistency_level
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix    = var.max_staleness_prefix
  }

  geo_location {
    location          = var.geo_location
    failover_priority = var.failover_priority
  }

  automatic_failover_enabled = var.automatic_failover_enabled

  dynamic "capabilities" {
    for_each = var.capabilities
    content {
      name = capabilities.value
    }
  }

  identity {
    type         = var.identity_type
    identity_ids = [azurerm_user_assigned_identity.example.id]
  
}
}
  