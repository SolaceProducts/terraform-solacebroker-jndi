# Solace PubSub+ Software Event Broker JNDI Terraform Module

Terraform module to configure a non-XA or XA [connection factory](https://docs.solace.com/API/Solace-JMS-API/Connection-Factories.htm) in the JNDI store of a [Solace PubSub+ Event Broker](https://solace.com/products/event-broker/). 

Full details are provided in the [Examples](#examples).

## Related modules

JNDI access must be enabled on the Message VPN. This can be configured using the [Service Module](). By default JNDI access is not enabled on Solace PubSub+ appliances, but it is enabled on Solace PubSub+ software event brokers.

To configure JNDI managed objects (JNDI Topics and Queues) when provisioning a PubSub+ queue or topic endpoint, use the [Queues & Endpoint Module]().

## Module input variables

### Required

* `msg_vpn_name` - Endpoints and endpoint templates are specific to a Message VPN on the broker
* `connection_factory_name` - The name of the connection factory to be created

### Optional

* `xa_enabled`

Additional optional module variables names are the same as the underlying connection factory resource attributes. The recommended approach to determine variable name mappings is to look up the resource's documentation for matching attribute names:

| Resource name |
|---------------|
|[solacebroker_msg_vpn_jndi_connection_factory](https://registry.terraform.io/providers/SolaceProducts/solacebroker/latest/docs/resources/msg_vpn_jndi_connection_factory#optional)|

Most optional variables' default value is null.

## Module outputs

The output provides reference to created resources. Any reference to a resource that has not been created will be set to `(null)`.

Outputs:
* `connection_factory` - the connection factory created
* `xa_connection_factory` - an alternative reference to the `connection_factory` if an XA connection factory has been created

## Providers

| Name | Version |
|------|---------|
| <a name="provider_solacebroker"></a> [solacebroker](#provider\_solacebroker) | ~> 0.9 |

## Resources

The following table shows the resources created depending on the `xa_enabled` variable. "X" denotes a resource always created, "O" is a resource that may be created optionally.

| Name | `false` or not specified | `true` |
|------|------|------|
| solacebroker_msg_vpn_jndi_connection_factory | X | X |

## Examples

Refer to the following configuration examples:

- [Connection factory](examples/connection-factory)
- [XA connection factory](examples/xa-connection-factory)

## Module use recommendations

This module is expected to be used primarily by application teams. It supports provisioning connection factories required by a specific application. It may be forked and adjusted with private defaults.

## Resources

For more information about Solace technology in general please visit these resources:

- Solace [Technical Documentation](https://docs.solace.com/)
- The Solace Developer Portal website at: [solace.dev](//solace.dev/)
- Understanding [Solace technology](//solace.com/products/platform/)
- Ask the [Solace community](//dev.solace.com/community/).
