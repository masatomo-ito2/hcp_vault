resource "vault_auth_backend" "userpass" {
  provider = vault.consul_mesh
  type     = "userpass"
}
