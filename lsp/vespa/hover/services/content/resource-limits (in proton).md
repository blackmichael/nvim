## resource-limits (in proton)

Contained in [proton](https://docs.vespa.ai/en/reference/services-content.html#proton). Specifies resource limits used by proton to reject both external and internal write operations (on this content node) when a limit is reached.  
**Warning:** These proton limits should almost never be changed directly. Instead, change [resource-limits](https://docs.vespa.ai/en/reference/services-content.html#resource-limits) that controls when external write operations are blocked in the entire content cluster. Be aware of the risks of tuning resource limits as seen in the link.

The local proton limits are derived from the cluster limits if not specified, using this formula:

$${L_{proton}} = {L_{cluster}} + \\frac{1-L_{cluster}}{2}$$
[Read more](https://docs.vespa.ai/en/reference/services-content.html#resource-limits-proton)