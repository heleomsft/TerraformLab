resource "azurerm_postgresql_server" "dev" {
  name                = var.server_name
  location            = var.location
  resource_group_name = var.resource_group_name

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  sku_name   = "GP_Gen5_4"
  version    = "9.6"
  storage_mb = 640000

  backup_retention_days        = 7
  geo_redundant_backup_enabled = true
  auto_grow_enabled            = true

  public_network_access_enabled    = true
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
}

resource "azurerm_postgresql_firewall_rule" "dev" {
  name                = "azresource-PSQL-fwrule"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.dev.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

resource "azurerm_postgresql_database" "dev" {
  name                = var.db_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.dev.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}


output "azurerm_postgresql_server_name" {
  value       = azurerm_postgresql_server.dev.name
  description = "Name of the postgresql server"
}

output "azurerm_postgresql_database" {
  value       = azurerm_postgresql_database.dev.name
  description = "Name of the postgresql database"
}

output "azurerm_postgresql_firewall_rule" {
  value       = azurerm_postgresql_firewall_rule.dev.name
  description = "Name of the firewall rule"
}