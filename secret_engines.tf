# Generic K/V
resource "vault_mount" "kv" {
  provider = vault.consul_mesh

  path        = "kv"
  type        = "kv"
  description = "Key value secret engines"
}

# PKI
resource "vault_pki_secret_backend" "pki" {
  provider = vault.consul_mesh

  path                      = "pki"
  default_lease_ttl_seconds = 2764800  # 32  days
  max_lease_ttl_seconds     = 31536000 # 1 year
}

resource "vault_pki_secret_backend_role" "role" {
  provider = vault.consul_mesh

  backend = vault_pki_secret_backend.pki.path
  name    = "consul"

  allowed_domains  = ["consul", "internal"]
  allow_subdomains = true
  max_ttl          = "32d"
}
