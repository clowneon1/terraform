variable "vault_token" {
  type = string
}
variable "db_creds_path" {
  type    = string
  default = "secret/db_creds"
}

variable "vault_url" {
  type    = string
  default = "http://localhost:8200"
}
