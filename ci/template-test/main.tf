provider "solacebroker" {
  username = "admin"
  password = "admin"
  url      = "http://localhost:8080"
}

module "testcf" {
  source = "../../internal/gen-template"

  msg_vpn_name  = "default"
  connection_factory_name = "/JNDI/CF/GettingStarted"
}

output "connection_factory" {
  value = module.testcf.connection_factory
}
