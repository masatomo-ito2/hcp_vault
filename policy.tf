resource "vault_policy" "admin" {
  provider = vault.consul_mesh
  name     = "admin"

  policy = <<EOT
path "*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
EOT
}
