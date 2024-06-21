# Connection Factory with Local Transactions Support Example

Configuration in this directory creates a [connection factory](https://docs.solace.com/API/Solace-JMS-API/Connection-Factories.htm) object in the JNDI store on the PubSub+ event broker, with local transactions support.

## Module Configuration in the Example

### Required Inputs

* `msg_vpn_name` - Set to `default` in the example.
* `connection_factory_name` - Set to `/JNDI/CF/LocalTransSupport` in the example.

### Optional Inputs

* `local_transactions_enabled` - Shall be set to `true` to configure a connection factory with local transactions support.

Note: connection factories must have the `transport_direct_transport_enabled` input variable disabled to support local and XA transactions. This is automatically ensured in this module if `local_transactions_enabled` is `true`.

Optional module input variables have the same name as the attributes of the underlying provider resource. If omitted, then the default for the related resource attribute will be configured on the broker. For a list of attributes and the corresponding defaults, see the [documentation of "solacebroker_msg_vpn_jndi_connection_factory"](https://registry.terraform.io/providers/SolaceProducts/solacebroker/latest/docs/resources/msg_vpn_jndi_connection_factory#optional).

### Output

The module `provisioned_connection_factory` output refers to the created connection factory.

## Created Resources

This example will create the following resources:

* `solacebroker_msg_vpn_jndi_connection_factory`

## Running the Example

### Access to a PubSub+ Event Broker

If you don't already have access to a broker, see the [Developers page](https://www.solace.dev/) for options to get started.

### Sample Source Code

The sample is available from the module GitHub repo:

```bash
git clone https://github.com/SolaceProducts/terraform-solacebroker-jndi.git
cd examples/local-transactions-support
```

### Adjust the Provider Configuration

Adjust the [provider parameters](https://registry.terraform.io/providers/SolaceProducts/solacebroker/latest/docs#schema) in `main.tf` according to your broker. The example configuration shows settings for a local broker running in Docker.

### Create the Resource

Tip: You can verify configuration changes on the broker, before and after, using the [PubSub+ Broker Manager Web UI](https://docs.solace.com/Admin/Broker-Manager/PubSub-Manager-Overview.htm).

Execute from this folder:

```bash
terraform init
terraform plan
terraform apply
```

Run `terraform destroy` to clean up the created resources when they are no longer needed.

## Additional Documentation

For more information, see [Connection Factories](https://docs.solace.com/API/Solace-JMS-API/Connection-Factories.htm) section in the PubSub+ documentation.

