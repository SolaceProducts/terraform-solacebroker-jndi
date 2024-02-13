# Output variable definitions

output "connection_factory" {
  value = try(solacebroker_msg_vpn_jndi_connection_factory.main[0], null)
}
