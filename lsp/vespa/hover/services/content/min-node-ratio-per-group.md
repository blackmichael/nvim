## min-node-ratio-per-group

**Important:** This is configuration for the cluster controller. Most users are normally looking for [min-active-docs-coverage](https://docs.vespa.ai/en/reference/services-content.html#min-active-docs-coverage) which controls how many nodes can be down before query load is routed to other groups.

Contained in [tuning](https://docs.vespa.ai/en/reference/services-content.html#tuning). States a lower bound requirement on the ratio of nodes within *individual* [groups](https://docs.vespa.ai/en/reference/services-content.html#group) that must be online and able to accept traffic before the entire group is automatically taken out of service. Groups are automatically brought back into service when the availability of its nodes has been restored to a level equal to or above this limit.

Elastic content clusters are often configured to use multiple groups for the sake of horizontal traffic scaling and/or data availability. The content distribution system will try to ensure a configured number of replicas is always present within a group in order to maintain data redundancy. If the number of available nodes in a group drops too far, it is possible for the remaining nodes in the group to not have sufficient capacity to take over storage and serving for the replicas they now must assume responsibility for. Such situations are likely to result in increased latencies and/or feed rejections caused by resource exhaustion. Setting this tuning parameter allows the system to instead automatically take down the remaining nodes in the group, allowing feed and query traffic to fail completely over to the remaining groups.

Valid parameter is a decimal value in the range \[0, 1\]. Default is 0, which means that the automatic group out-of-service functionality will *not* automatically take effect.

Example: assume a cluster has been configured with *n* groups of 4 nodes each and the following tuning config:


```xml
<tuning>
    <min-node-ratio-per-group>0.75</min-node-ratio-per-group>
</tuning>

```


This tuning allows for 1 node in a group to be down. If 2 or more nodes go down, all nodes in the group will be marked as down, letting the *n-1* remaining groups handle all the traffic.

This configuration can be changed live as the system is running and altered limits will take effect immediately.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#min-node-ratio-per-group)