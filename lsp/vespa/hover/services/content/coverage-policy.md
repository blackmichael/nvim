## coverage-policy

Contained in [content](https://docs.vespa.ai/en/reference/services-content.html#content).

Specifies the coverage policy for the content cluster. Valid values are `group` or `node`. The default value is `group`.

If the policy is `group` coverage is maintained per group, meaning that when doing maintenance, upgrades etc. one group is allowed to be down at a time. If there is only one group in the cluster, coverage will be the same as policy `node`.

If the policy is `node` coverage is maintained on a node level, meaning that when doing maintenance, upgrades etc. coverage will be maintained on a node level, so in practice 1 node in the whole cluster is allowed to be down at a time.

When having several groups the common reason for changing policy away from the default `group` policy is when the load added to the remaining groups will increase too much when a whole group is allowed to go down. In that case it will be better to use the `node` policy, as taking one node at a time will give just a minor increase in load.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#coverage-policy)