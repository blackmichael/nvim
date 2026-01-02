## max-document-size

Contained in [tuning](https://docs.vespa.ai/en/reference/services-content.html#tuning). Specifies max document size in the content cluster, measured as the uncompressed size of a document operation arriving over the wire by the distributor service. The limit will be used for all document types. A document larger than this limit will be rejected by the distributor. Note that some document operations that don't contain the entire document, like [document updates](https://docs.vespa.ai/en/document-api-guide.html#document-updates) might increase the size of a document above this limit.

Valid values are numbers including a unit (e.g. *10MiB*) and the value must be between 1Mib and 2048 Mib (inclusive). Values will be rounded to nearest MiB, so using MiB as a unit is preferrable. It is strongly recommended to make sure this is not set too high, 10 MiB is a reasonable setting for most use cases, setting it above 100 MiB is not recommended, as allowing large documents might impact operations, e.g. when restarting nodes, moving documents between nodes etc. Default value is 128 MiB.

Example:


```xml
<tuning>
    <max-document-size>10MiB</max-document-size>
</tuning>

```


[Read more](https://docs.vespa.ai/en/reference/services-content.html#max-document-size)