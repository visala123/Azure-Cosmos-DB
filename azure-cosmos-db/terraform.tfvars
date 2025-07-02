resource_group_name = "cosmos-rg"
user_assigned_identity_name = "cosmosdb-identity"
cosmosdb_name       = "cosmosdbdemo"
database_name       = "demo-db"
container_name      = "demo-container"
location            = "East US"
offer_type                = "Standard"
kind                      = "MongoDB"
consistency_level         = "BoundedStaleness"
max_interval_in_seconds   = 300
max_staleness_prefix      = 100000

geo_location              = "East US"
failover_priority         = 0
automatic_failover_enabled = true

capabilities = [
  "EnableAggregationPipeline",
  "mongoEnableDocLevelTTL",
  "MongoDBv3.4",
  "EnableMongo"
]

identity_type = "UserAssigned"


