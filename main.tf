# Copyright 2024 Solace Corporation. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "solacebroker_msg_vpn_jndi_connection_factory" "main" {
  count = var.connection_factory_name != "" ? 1 : 0

  msg_vpn_name                       = var.msg_vpn_name
  connection_factory_name            = var.connection_factory_name
  transport_direct_transport_enabled = var.xa_enabled == true || var.local_transactions_enabled == true ? false : var.transport_direct_transport_enabled
  xa_enabled                         = var.xa_enabled

  allow_duplicate_client_id_enabled            = var.allow_duplicate_client_id_enabled
  client_description                           = var.client_description
  client_id                                    = var.client_id
  dto_receive_override_enabled                 = var.dto_receive_override_enabled
  dto_receive_subscriber_local_priority        = var.dto_receive_subscriber_local_priority
  dto_receive_subscriber_network_priority      = var.dto_receive_subscriber_network_priority
  dto_send_enabled                             = var.dto_send_enabled
  dynamic_endpoint_create_durable_enabled      = var.dynamic_endpoint_create_durable_enabled
  dynamic_endpoint_respect_ttl_enabled         = var.dynamic_endpoint_respect_ttl_enabled
  guaranteed_receive_ack_timeout               = var.guaranteed_receive_ack_timeout
  guaranteed_receive_reconnect_retry_count     = var.guaranteed_receive_reconnect_retry_count
  guaranteed_receive_reconnect_retry_wait      = var.guaranteed_receive_reconnect_retry_wait
  guaranteed_receive_window_size               = var.guaranteed_receive_window_size
  guaranteed_receive_window_size_ack_threshold = var.guaranteed_receive_window_size_ack_threshold
  guaranteed_send_ack_timeout                  = var.guaranteed_send_ack_timeout
  guaranteed_send_window_size                  = var.guaranteed_send_window_size
  messaging_default_delivery_mode              = var.messaging_default_delivery_mode
  messaging_default_dmq_eligible_enabled       = var.messaging_default_dmq_eligible_enabled
  messaging_default_eliding_eligible_enabled   = var.messaging_default_eliding_eligible_enabled
  messaging_jmsx_user_id_enabled               = var.messaging_jmsx_user_id_enabled
  messaging_text_in_xml_payload_enabled        = var.messaging_text_in_xml_payload_enabled
  transport_compression_level                  = var.transport_compression_level
  transport_connect_retry_count                = var.transport_connect_retry_count
  transport_connect_retry_per_host_count       = var.transport_connect_retry_per_host_count
  transport_connect_timeout                    = var.transport_connect_timeout
  transport_keepalive_count                    = var.transport_keepalive_count
  transport_keepalive_enabled                  = var.transport_keepalive_enabled
  transport_keepalive_interval                 = var.transport_keepalive_interval
  transport_msg_callback_on_io_thread_enabled  = var.transport_msg_callback_on_io_thread_enabled
  transport_optimize_direct_enabled            = var.transport_optimize_direct_enabled
  transport_port                               = var.transport_port
  transport_read_timeout                       = var.transport_read_timeout
  transport_receive_buffer_size                = var.transport_receive_buffer_size
  transport_reconnect_retry_count              = var.transport_reconnect_retry_count
  transport_reconnect_retry_wait               = var.transport_reconnect_retry_wait
  transport_send_buffer_size                   = var.transport_send_buffer_size
  transport_tcp_no_delay_enabled               = var.transport_tcp_no_delay_enabled
}

