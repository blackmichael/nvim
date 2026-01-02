## resources

Contained in the [nodes](https://docs.vespa.ai/en/reference/services.html#nodes) element, specifies the resources available on each node. This element is used in Vespa Cloud configuration only. The resources must match a node flavor at [AWS](https://cloud.vespa.ai/en/reference/aws-flavors.html), [GCP](https://cloud.vespa.ai/en/reference/gcp-flavors.html), or both, depending on which zones you are deploying to. Exception: If you use remote disk, you can specify any number lower than the max size.

Any element not specified will be assigned a default value.

**Subelements:** [gpu](https://docs.vespa.ai/en/reference/services.html#gpu)
[Read more](https://docs.vespa.ai/en/reference/services.html#resources)