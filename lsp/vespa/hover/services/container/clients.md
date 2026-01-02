## clients

Vespa Cloud only. The `clients` element is a parent element for [client](https://docs.vespa.ai/en/reference/services-container.html#client) security configuration. Find details and practical examples in the [security guide](https://docs.vespa.ai/en/cloud/security/guide.html#configure-tokens). Example:


```xml
<container id="query" version="1.0">
    <clients>
        <client id="mtls" permissions="read">
            <certificate file="security/clients.pem"/>
        </client>
        <client id="query-token-client" permissions="read">
            <token id="query-token"/>
        </client>
    </clients>
</container>

```


[Read more](https://docs.vespa.ai/en/reference/services-container.html#clients)