# Output variable definitions

output "connection_factory" {
  value = try(solacebroker_msg_vpn_jndi_connection_factory.main[0], null)
}

output "xa_connection_factory" {
  value = var.xa_enabled == true ? try(solacebroker_msg_vpn_jndi_connection_factory.main[0], null) : null
}
