resource "solacebroker_msg_vpn_jndi_connection_factory" "main" {
  count = var.connection_factory_name != "" ? 1 : 0

  msg_vpn_name                       = var.msg_vpn_name
  connection_factory_name            = var.connection_factory_name
  transport_direct_transport_enabled = var.xa_enabled == true || var.local_transactions_enabled == true ? false : var.transport_direct_transport_enabled
  xa_enabled                         = var.xa_enabled

  #AutoAddAttributes #EnableCommonVariables
}
