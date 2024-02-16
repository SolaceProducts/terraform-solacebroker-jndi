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

# Input variable definitions

# Required variables

variable "msg_vpn_name" {
  description = "The name of the Message VPN"
  type        = string
}

variable "connection_factory_name" {
  description = "The name of the connection factory"
  type        = string
}

# Optional variables

variable "local_transactions_enabled" {
  description = "Enable or disable local transactions support for the connection factory. Enabling XA will enable local transactions support regardless of this variable."
  type        = bool
  default     = false
}

variable "xa_enabled" {
  description = "Enable or disable XA transactions support for the connection factory."
  type        = bool
  default     = null
}

variable "transport_direct_transport_enabled" {
  description = "Enable or disable usage of Direct Transport mode."
  type        = bool
  default     = null
}

variable "allow_duplicate_client_id_enabled" {
  description = "Enable or disable whether new JMS connections can use the same Client identifier (ID) as an existing connection."
  type        = bool
  default     = null
}

variable "client_description" {
  description = "The description of the Client."
  type        = string
  default     = null
}

variable "client_id" {
  description = "The Client identifier (ID)."
  type        = string
  default     = null
}

variable "dto_receive_override_enabled" {
  description = "Enable or disable overriding by the Subscriber (Consumer) of the deliver-to-one (DTO) property on messages."
  type        = bool
  default     = null
}

variable "dto_receive_subscriber_local_priority" {
  description = "The priority for receiving deliver-to-one (DTO) messages by the Subscriber (Consumer) if the messages are published on the local broker that the Subscriber is directly connected to."
  type        = number
  default     = null
}

variable "dto_receive_subscriber_network_priority" {
  description = "The priority for receiving deliver-to-one (DTO) messages by the Subscriber (Consumer) if the messages are published on a remote broker."
  type        = number
  default     = null
}

variable "dto_send_enabled" {
  description = "Enable or disable the deliver-to-one (DTO) property on messages sent by the Publisher (Producer)."
  type        = bool
  default     = null
}

variable "dynamic_endpoint_create_durable_enabled" {
  description = "Enable or disable whether a durable endpoint will be dynamically created on the broker when the client calls \"Session."
  type        = bool
  default     = null
}

variable "dynamic_endpoint_respect_ttl_enabled" {
  description = "Enable or disable whether dynamically created durable and non-durable endpoints respect the message time-to-live (TTL) property."
  type        = bool
  default     = null
}

variable "guaranteed_receive_ack_timeout" {
  description = "The timeout for sending the acknowledgment (ACK) for guaranteed messages received by the Subscriber (Consumer), in milliseconds."
  type        = number
  default     = null
}

variable "guaranteed_receive_reconnect_retry_count" {
  description = "The maximum number of attempts to reconnect to the host or list of hosts after the guaranteed  messaging connection has been lost."
  type        = number
  default     = null
}

variable "guaranteed_receive_reconnect_retry_wait" {
  description = "The amount of time to wait before making another attempt to connect or reconnect to the host after the guaranteed messaging connection has been lost, in milliseconds."
  type        = number
  default     = null
}

variable "guaranteed_receive_window_size" {
  description = "The size of the window for guaranteed messages received by the Subscriber (Consumer), in messages."
  type        = number
  default     = null
}

variable "guaranteed_receive_window_size_ack_threshold" {
  description = "The threshold for sending the acknowledgment (ACK) for guaranteed messages received by the Subscriber (Consumer) as a percentage of `guaranteed_receive_window_size`."
  type        = number
  default     = null
}

variable "guaranteed_send_ack_timeout" {
  description = "The timeout for receiving the acknowledgment (ACK) for guaranteed messages sent by the Publisher (Producer), in milliseconds."
  type        = number
  default     = null
}

variable "guaranteed_send_window_size" {
  description = "The size of the window for non-persistent guaranteed messages sent by the Publisher (Producer), in messages."
  type        = number
  default     = null
}

variable "messaging_default_delivery_mode" {
  description = "The default delivery mode for messages sent by the Publisher (Producer)."
  type        = string
  default     = null
}

variable "messaging_default_dmq_eligible_enabled" {
  description = "Enable or disable whether messages sent by the Publisher (Producer) are Dead Message Queue (DMQ) eligible by default."
  type        = bool
  default     = null
}

variable "messaging_default_eliding_eligible_enabled" {
  description = "Enable or disable whether messages sent by the Publisher (Producer) are Eliding eligible by default."
  type        = bool
  default     = null
}

variable "messaging_jmsx_user_id_enabled" {
  description = "Enable or disable inclusion (adding or replacing) of the JMSXUserID property in messages sent by the Publisher (Producer)."
  type        = bool
  default     = null
}

variable "messaging_text_in_xml_payload_enabled" {
  description = "Enable or disable encoding of JMS text messages in Publisher (Producer) messages as XML payload."
  type        = bool
  default     = null
}

variable "transport_compression_level" {
  description = "The ZLIB compression level for the connection to the broker."
  type        = number
  default     = null
}

variable "transport_connect_retry_count" {
  description = "The maximum number of retry attempts to establish an initial connection to the host or list of hosts."
  type        = number
  default     = null
}

variable "transport_connect_retry_per_host_count" {
  description = "The maximum number of retry attempts to establish an initial connection to each host on the list of hosts."
  type        = number
  default     = null
}

variable "transport_connect_timeout" {
  description = "The timeout for establishing an initial connection to the broker, in milliseconds."
  type        = number
  default     = null
}

variable "transport_keepalive_count" {
  description = "The maximum number of consecutive application-level keepalive messages sent without the broker response before the connection to the broker is closed."
  type        = number
  default     = null
}

variable "transport_keepalive_enabled" {
  description = "Enable or disable usage of application-level keepalive messages to maintain a connection with the broker."
  type        = bool
  default     = null
}

variable "transport_keepalive_interval" {
  description = "The interval between application-level keepalive messages, in milliseconds."
  type        = number
  default     = null
}

variable "transport_msg_callback_on_io_thread_enabled" {
  description = "Enable or disable delivery of asynchronous messages directly from the I/O thread."
  type        = bool
  default     = null
}

variable "transport_optimize_direct_enabled" {
  description = "Enable or disable optimization for the Direct Transport delivery mode."
  type        = bool
  default     = null
}

variable "transport_port" {
  description = "The connection port number on the broker for SMF clients."
  type        = number
  default     = null
}

variable "transport_read_timeout" {
  description = "The timeout for reading a reply from the broker, in milliseconds."
  type        = number
  default     = null
}

variable "transport_receive_buffer_size" {
  description = "The size of the receive socket buffer, in bytes."
  type        = number
  default     = null
}

variable "transport_reconnect_retry_count" {
  description = "The maximum number of attempts to reconnect to the host or list of hosts after the connection has been lost."
  type        = number
  default     = null
}

variable "transport_reconnect_retry_wait" {
  description = "The amount of time before making another attempt to connect or reconnect to the host after the connection has been lost, in milliseconds."
  type        = number
  default     = null
}

variable "transport_send_buffer_size" {
  description = "The size of the send socket buffer, in bytes."
  type        = number
  default     = null
}

variable "transport_tcp_no_delay_enabled" {
  description = "Enable or disable the TCP_NODELAY option."
  type        = bool
  default     = null
}

