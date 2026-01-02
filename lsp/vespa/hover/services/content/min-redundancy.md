## min-redundancy

Contained in [content](https://docs.vespa.ai/en/reference/services-content.html#content). The minimum total data copies the cluster will maintain. This can be set instead of (or in addition to) redundancy to ensure that a minimum number of copies are always maintained regardless of other configuration.

Example: If *min-redundancy* is 2 and there is 1 content group, there will be 2 data copies in the group (2 copies for the cluster). If the number of groups is changed to 2 there will be 1 data copy in each group (still 2 copies for the cluster).

Read more about the actual number of replicas when using [groups](https://docs.vespa.ai/en/reference/services-content.html#group) in [topology change](https://docs.vespa.ai/en/elasticity.html#changing-topology).

`min-redundancy` can be changed without node restart - replicas will be added or removed automatically.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#min-redundancy)