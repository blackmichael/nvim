## searchable-copies

Contained in [proton](https://docs.vespa.ai/en/reference/services-content.html#proton). Default value is 2, or [redundancy](https://docs.vespa.ai/en/reference/services-content.html#redundancy), if lower. If set to less than redundancy, only some of the stored copies are ready for searching at any time. This means that node failures causes temporary data unavailability while the alternate copies are being indexed for search. The benefit is using less memory, trading off availability during transitions. Refer to [bucket move](https://docs.vespa.ai/en/proton.html#bucket-move).

If updating documents or using [document selection](https://docs.vespa.ai/en/reference/services-content.html#documents) for garbage collection, consider setting [fast-access](https://docs.vespa.ai/en/reference/schema-reference.html#attribute) on the subset of attribute fields used for this to make sure that these attributes are always kept in memory for fast access. Note that this is only useful if `searchable-copies` is less than `redundancy`. Read more in [proton](https://docs.vespa.ai/en/proton.html).

`searchable-copies` can be changed without node restart. Note that when reducing `searchable-copies` resource usage will not be reduced until content nodes are restarted.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#searchable-copies)