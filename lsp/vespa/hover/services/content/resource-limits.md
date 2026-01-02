## resource-limits

Contained in [tuning](https://docs.vespa.ai/en/reference/services-content.html#tuning). Specifies resource limits used to decide whether external write operations should be blocked in the entire content cluster, based on the reported resource usage by content nodes. See [feed block](https://docs.vespa.ai/en/operations/feed-block.html) for more details.

**Warning:** The content nodes require resource headroom to handle extra documents as part of re-distribution during node failure, and spikes when running [maintenance jobs](https://docs.vespa.ai/en/proton.html#proton-maintenance-jobs). Tuning these limits should be done with extreme care, and setting them too high might lead to permanent data loss. They are best left untouched, using the defaults, and cannot be set in Vespa Cloud.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#resource-limits)