## max-concurrent

Contained in [visitors](https://docs.vespa.ai/en/reference/services-content.html#visitors). Defines how many visitors can be active concurrently on each storage node. The number allowed depends on priority - lower priority visitors should not block higher priority visitors completely. To implement this, specify a fixed and a variable number. The maximum active is calculated by adjusting the variable component using the priority, and adding the fixed component.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#max-concurrent)