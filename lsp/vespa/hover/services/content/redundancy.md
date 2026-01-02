## redundancy

Contained in [content](https://docs.vespa.ai/en/reference/services-content.html#content).  
**Note:** Use [min-redundancy](https://docs.vespa.ai/en/reference/services-content.html#min-redundancy) instead of `redundancy`.

Vespa OSS: The total data copies the cluster will maintain to avoid data loss.

Vespa Cloud: The number of data copies *per group*.

Example: with a redundancy of 2, the system tolerates 1 node failure before data becomes unavailable (until the system has managed to create new replicas on other online nodes).

Redundancy can be changed without node restart - replicas will be added or removed automatically.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#redundancy)