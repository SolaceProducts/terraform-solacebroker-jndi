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

provider "solacebroker" {
  username = "admin"
  password = "admin"
  url      = "http://localhost:8080"
}

module "testcf" {
  # update with the module location
  source = "../.."

  msg_vpn_name            = "default"
  connection_factory_name = "/JNDI/CF/LocalTransSupport"

  # "local_transactions_enabled" shall be set to "true" for the connection factory to support local transactions
  local_transactions_enabled = true

  # This is normally required for local transactions to work properly, but setting "local_transactions_enabled" to "true" already ensures the correct settings, when using this module         
  # transport_direct_transport_enabled = false

}

output "provisioned_connection_factory" {
  value       = module.testcf.connection_factory
  description = "The provisioned connection factory"
}

# Note that for a non-XA connection factory the output module.testcf.xa_connection_factory is null

