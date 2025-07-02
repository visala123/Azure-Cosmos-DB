variable "location" {
  description = "Azure region to deploy to"
  type        = string
  }

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}
variable "user_assigned_identity_name" {
  type        = string
  description = "Name of the user-assigned managed identity"
}

variable "cosmosdb_name" {
  description = "Base name for Cosmos DB account"
  type        = string
}

variable "database_name" {
  description = "Cosmos DB SQL database name"
  type        = string
}

variable "container_name" {
  description = "Cosmos DB container name"
  type        = string
}

variable "offer_type" {
  type        = string
 
}

variable "kind" {
  type        = string
  }

variable "consistency_level" {
  type        = string
}

variable "max_interval_in_seconds" {
  type        = number
 
}

variable "max_staleness_prefix" {
  type        = number
} 

variable "geo_location" {
  type        = string
  description = "Geo location for Cosmos DB account"
}

variable "failover_priority" {
  type        = number
}

variable "automatic_failover_enabled" {
  type        = bool
}

variable "capabilities" {
  type        = list(string)
  description = "List of Cosmos DB capabilities"
}

variable "identity_type" {
  type        = string
 
}


