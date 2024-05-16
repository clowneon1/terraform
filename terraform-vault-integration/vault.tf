data "vault_generic_secret" "db_creds" {
  path = var.db_creds_path

}

output "vault_secrets_json_object_format" {
  #this give data in json format
  value     = data.vault_generic_secret.db_creds.data
  sensitive = true
}


output "vault_secrets_json_string_format" {
  #this give data in json format
  value     = data.vault_generic_secret.db_creds.data_json
  sensitive = true
}
