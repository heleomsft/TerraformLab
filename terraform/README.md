<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>2.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>2.46.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_AppServicePlan"></a> [AppServicePlan](#module\_AppServicePlan) | .//AppService/ | n/a |
| <a name="module_PostgreSQLServer"></a> [PostgreSQLServer](#module\_PostgreSQLServer) | .//PostgreSQL-Server/ | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | n/a | `string` | n/a | yes |
| <a name="input_administrator_login_password"></a> [administrator\_login\_password](#input\_administrator\_login\_password) | n/a | `string` | n/a | yes |
| <a name="input_app_service_name"></a> [app\_service\_name](#input\_app\_service\_name) | n/a | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | n/a | `string` | `"petrodbdev"` | no |
| <a name="input_django_superuser_password"></a> [django\_superuser\_password](#input\_django\_superuser\_password) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"Central US"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | `"Dev"` | no |
| <a name="input_server_name"></a> [server\_name](#input\_server\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
