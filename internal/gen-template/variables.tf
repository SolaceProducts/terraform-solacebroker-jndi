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

#AutoAddAttributes