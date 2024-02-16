provider "solacebroker" {
  username = "admin"
  password = "admin"
  url      = "http://localhost:8080"
}

module "testcf" {
  source = "../../internal/gen-template"

  msg_vpn_name            = "default"
  connection_factory_name = "/JNDI/CF/GettingStarted"
}

module "testcflocal" {
  source = "../../internal/gen-template"

  msg_vpn_name               = "default"
  connection_factory_name    = "/JNDI/CF/GettingStartedLocal"
  local_transactions_enabled = true
}

module "testcfxa" {
  source = "../../internal/gen-template"

  msg_vpn_name            = "default"
  connection_factory_name = "/JNDI/CF/GettingStartedXA"
  xa_enabled              = true
}

output "connection_factory" {
  value = module.testcf.connection_factory
}

output "connection_factory_null" {
  value = module.testcf.xa_connection_factory
}

output "connection_factory_local" {
  value = module.testcflocal.connection_factory
}

output "xaconnection_factory" {
  value = module.testcfxa.xa_connection_factory
}
