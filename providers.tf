provider "random" {}

provider "kafka" {
  bootstrap_servers = ["localhost:29092"]
  tls_enabled       = false
}
