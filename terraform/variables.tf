variable "administrator_login" {
    type = string
}

variable "administrator_login_password" {
  type    = string
  sensitive   = true
}

variable server_name{
  type    = string
}

variable location{
  type    = string
  default = "Central US"
}

variable resource_group_name{
  type    = string
  default = "Dev"
}

variable "app_service_name" {
  type    = string
}

variable db_name {
  type    = string
  default = "henrymydb"
}

variable django_superuser_password {
  type    = string
  sensitive = true
}