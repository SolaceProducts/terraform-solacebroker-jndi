# Solace PubSub+ Software Event Broker JNDI Terraform Module

Terraform module to configure a non-XA or XA [connection factory](https://docs.solace.com/API/Solace-JMS-API/Connection-Factories.htm) in the JNDI store of a [Solace PubSub+ Event Broker](https://solace.com/products/event-broker/). 

Full details are provided in the [Examples](#examples).

## Related modules

JNDI access must be enabled on the Message VPN. This can be configured using the [Service Module](). By default JNDI access is not enabled on Solace PubSub+ appliances, but it is enabled on Solace PubSub+ software event brokers.

To configure JNDI managed objects (JNDI Topics and Queues) use the [Queues & Endpoint Module]().

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

The output provides reference to created resources. Any reference for a resource that has not been created for an endpoint type will be set to `(null)`.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_solacebroker"></a> [solacebroker](#provider\_solacebroker) | ~> 0.9 |

## Resources

The following table shows the resources created for each `endpoint-type` value. "X" denotes a resource always created, "O" is a resource that may be created optionally  

| Name | queue | topic_endpoint | queue_template | topic_endpoint_template |
|------|------|------|------|------|
| solacebroker_msg_vpn_queue | X | | | |
| solacebroker_msg_vpn_jndi_queue | O | | | |
| solacebroker_msg_vpn_queue_subscription | O | | | |
| solacebroker_msg_vpn_topic_endpoint | | X | | |
| solacebroker_msg_vpn_jndi_topic | | O | | |
| solacebroker_msg_vpn_queue_template | | | X | |
| solacebroker_msg_vpn_topic_endpoint_template | | | | X |

## Examples

Refer to the following configuration examples:

- Queue
    - [Exclusive queue](examples/exclusive-queue)
    - [Non-exclusive queue](examples/non-exclusive-queue)
    - [Partitioned queue](examples/partitioned-queue)
    - [Queue with topic subscriptions](examples/queue-with-topic-subscriptions)
    - [Queue with exposed JNDI](examples/queue-with-jndi)
- [Queue template](examples/queue-template)
- [Topic endpoint](examples/topic-endpoint)
    - [Topic endpoint with exposed JNDI](examples/topic-endpoint-with-jndi)
- [Topic endpoint template](examples/topic-endpoint-template)

## Module use recommendations

This module is expected to be used primarily by application teams. It supports provisioning connection factories required by a specific application. It may be forked and adjusted with private defaults.

## Resources

For more information about Solace technology in general please visit these resources:

- Solace [Technical Documentation](https://docs.solace.com/)
- The Solace Developer Portal website at: [solace.dev](//solace.dev/)
- Understanding [Solace technology](//solace.com/products/platform/)
- Ask the [Solace community](//dev.solace.com/community/).
