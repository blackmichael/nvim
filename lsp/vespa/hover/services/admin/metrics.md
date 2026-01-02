## metrics

Used for configuring the forwarding of metrics to graphing applications - add `consumer` child elements. Also see [monitoring](https://docs.vespa.ai/en/operations-selfhosted/monitoring.html). Example:


```xml
<metrics>
    <consumer id="my-metric-namespace">
        <metric-set id="default" />
        <metric id="my-custom-metric" />
        <cloudwatch region="us-east-1" namespace="my-vespa">
            <shared-credentials file="/path/to/credentials-file" profile="default" />
        </cloudwatch>
    </consumer>
</metrics>

```


[Read more](https://docs.vespa.ai/en/reference/services-admin.html#metrics)