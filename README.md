# Solace PubSub+ Software Event Broker JNDI Terraform Module

This Terraform module configures a [connection factory object](https://docs.solace.com/API/Solace-JMS-API/Connection-Factories.htm) in the JNDI store of a [Solace PubSub+ Event Broker](https://solace.com/products/event-broker/). 

Use case details are provided in the [Examples](#examples) section.

## Related modules

To use JNDI, access must be enabled on the Message VPN. You can configure this using the [Service Module](https://registry.terraform.io/modules/SolaceProducts/service/solacebroker/latest). By default, JNDI access is not enabled on Solace PubSub+ appliances, but it is enabled on Solace PubSub+ software event brokers.

To configure JNDI managed objects (JNDI Topics and Queues) when provisioning a PubSub+ queue or topic endpoint, use the [Queues & Endpoints Module](https://registry.terraform.io/modules/SolaceProducts/queue-endpoint/solacebroker/latest).

## Module input variables

### Required

* `msg_vpn_name` - the Message VPN on the event broker for which JNDI configuration is created.
* `connection_factory_name` - The name of the connection factory to be created.

### Optional

* `local_transactions_enabled` - Specifies if the connection factory shall support local transactions. The default is `false`.
* `xa_enabled` - Specifies if the connection factory shall support XA transactions. When enabled it also enables local transactions support. The default is `false`. Note: this variable has the same name and use as the underlying resource attribute.

Additional optional module variables names are the same as the underlying connection factory resource attributes. To determine the variable name mappings, we recommend that you look for matching attribute names in the documentation for the resource:

| Resource name |
|---------------|
|[solacebroker_msg_vpn_jndi_connection_factory](https://registry.terraform.io/providers/SolaceProducts/solacebroker/latest/docs/resources/msg_vpn_jndi_connection_factory#optional)|

The default value for most of the optional variables is `null`, meaning that if you don’t provide a value then the default value of the resource is provisioned on the event broker.

## Module outputs

[Module outputs](https://developer.hashicorp.com/terraform/language/values/outputs) provide reference to created resources. Any reference to a resource that has not been created will be set to `(null)`.

Outputs:
* `connection_factory` - The connection factory created.
* `xa_connection_factory` - An alternative reference to the same `connection_factory`, only if an XA connection factory has been created.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_solacebroker"></a> [solacebroker](https://registry.terraform.io/providers/SolaceProducts/solacebroker/latest) | ~> 1.0 |

## Resources

The following table shows the resources created.

| Name |
|------|
| solacebroker_msg_vpn_jndi_connection_factory |

## Examples

The following examples demonstrate several specific use cases for this module:

- [Basic connection factory](examples/basic/)
- [Connection factory with local transactions support](examples/local-transactions-support/)
- [Connection factory with XA transactions support](examples/xa-transactions-support/)

## Module use recommendations

This module is expected to be used primarily by application teams. It supports provisioning connection factories required by a specific application. It may be forked and adjusted with private defaults.

## Resources

For more information about Solace technology in general please visit these resources:

- Solace [Technical Documentation](https://docs.solace.com/)
- The Solace Developer Portal website at: [solace.dev](//solace.dev/)
- Understanding [Solace technology](//solace.com/products/platform/)
- Ask the [Solace community](//dev.solace.com/community/).
