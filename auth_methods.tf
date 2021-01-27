resource "vault_auth_backend" "userpass" {
  provider = vault.consul_mesh
  type     = "userpass"
}

resource "vault_auth_backend" "aws" {
  provider = vault.consul_mesh
  type     = "aws"
}

resource "vault_auth_backend" "azure" {
  provider = vault.consul_mesh
  type     = "azure"
}
