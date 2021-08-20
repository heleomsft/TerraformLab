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
}

variable resource_group_name{
  type    = string
}

variable db_name {
  type    = string
  default = "petrodbdev"
}