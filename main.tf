provider "vault" {
	# token, namespace and vault address should be set via env vars
}

provider "vault" {
	alias = "consul_mesh"
	namespace = var.ns_consul_mesh
}
