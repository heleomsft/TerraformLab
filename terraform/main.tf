provider "azurerm" {
    features {}
}

terraform {
    required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-azure-lab"
    storage_account_name = "satfazurelab"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "dev" {
  name     = var.resource_group_name
  location = var.location
}

module "AppServicePlan"{
  source  = ".//AppService/"
  app_service_name    = var.app_service_name
  location            = azurerm_resource_group.dev.location
  resource_group_name = azurerm_resource_group.dev.name

  administrator_login = var.administrator_login
  administrator_login_password = var.administrator_login_password
  server_name = var.server_name
  django_superuser_password = var.django_superuser_password

}

module "PostgreSQLServer"{
  source  = ".//PostgreSQL-Server/"
  location            = azurerm_resource_group.dev.location
  resource_group_name = azurerm_resource_group.dev.name
  administrator_login = var.administrator_login
  administrator_login_password = var.administrator_login_password
  server_name = var.server_name
  db_name = var.db_name
}