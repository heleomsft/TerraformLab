resource "azurerm_app_service_plan" "dev" {
    name                = "PetroAppPlanDev"
    location            = var.location
    resource_group_name = var.resource_group_name
    kind                = "Linux"
    reserved = true
    sku {
        tier = "Standard"
        size = "S1"
    }
}

resource "azurerm_app_service" "dev" {
    name                = var.app_service_name
    location            = var.location
    resource_group_name = var.resource_group_name
    app_service_plan_id = azurerm_app_service_plan.dev.id

    site_config {  
       linux_fx_version   = "PYTHON|3.7"                                                       
       use_32_bit_worker_process = true
       http2_enabled = true
    }                                                                        
                                                                                
    app_settings = {                                                         
        "DBHOST" = var.server_name
        "DBNAME" = "pollsdb"
        "DBUSER" = var.administrator_login
        "DBPASS" = var.administrator_login_password         
        "SCM_DO_BUILD_DURING_DEPLOYMENT" = "true"
        "DISABLE_COLLECTSTATIC" = "true"    
        "DJANGO_ENV" = "production"
        "DJANGO_SUPERUSER_PASSWORD" = var.django_superuser_password
        "DJANGO_SUPERUSER_USERNAME" = "rooter4"
        "DJANGO_SUPERUSER_EMAIL" = "my@microsoft.com"
        "POST_BUILD_SCRIPT_PATH" = "Procfile.sh"
    }   
}

output "azurerm_app_service_plan_name" {
  value       = azurerm_app_service_plan.dev.name
  description = "Name of the app service plan"
}