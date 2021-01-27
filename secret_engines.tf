resource "vault_mount" "kv" {
  provider = vault.consul_mesh

  path        = "kv"
  type        = "kv"
  description = "Key value secret engines"
}
