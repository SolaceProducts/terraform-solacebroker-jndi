# Output variable definitions

output "connection_factory" {
  value       = try(solacebroker_msg_vpn_jndi_connection_factory.main[0], null)
  description = "The message broker provides an internal JNDI store for provisioned Connection Factory objects that clients can access through JNDI lookups."
}

output "xa_connection_factory" {
  value       = var.xa_enabled == true ? try(solacebroker_msg_vpn_jndi_connection_factory.main[0], null) : null
  description = "The message broker provides an internal JNDI store for provisioned Connection Factory objects that clients can access through JNDI lookups."
}

