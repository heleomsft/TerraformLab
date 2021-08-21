variable "location" {
    type    = string
}

variable "resource_group_name" {
  type    = string
}

variable "app_service_name" {
  type    = string
}

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

variable django_superuser_password {
  type    = string
  sensitive = true
}