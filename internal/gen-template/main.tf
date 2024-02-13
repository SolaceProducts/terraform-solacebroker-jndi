resource "solacebroker_msg_vpn_jndi_connection_factory" "main" {
  count = var.connection_factory_name != "" ? 1 : 0

  msg_vpn_name    = var.msg_vpn_name
  connection_factory_name = var.connection_factory_name

  #AutoAddAttributes #EnableCommonVariables
}
