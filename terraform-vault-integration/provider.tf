terraform {
  required_version = " >= 1.7.5"
}

#remember to create a docker container for vault
# also if you are noob like me you might have set up vault token so make sure you pass it here

provider "vault" {
  address = var.vault_url
  token   = var.vault_token
}
