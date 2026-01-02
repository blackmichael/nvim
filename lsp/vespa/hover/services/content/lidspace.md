## lidspace

Contained in [searchnode](https://docs.vespa.ai/en/reference/services-content.html#searchnode), optional. Tune settings related to how lidspace is managed. Optional sub-elements:

* `max-bloat-factor`: Maximum bloat allowed before lidspace compaction is started. Compaction is moving a document from a high lid to a lower lid. Cost is similar to feeding a document and removing it. Also see description in [lidspace compaction maintenance job](https://docs.vespa.ai/en/proton.html#lid-space-compaction). Default value is 0.01 or 1% of total lidspace. Will be increased to target of 0.50 or 50%.


```xml
<lidspace>
    <max-bloat-factor>0.5</max-bloat-factor>
</lidspace>

```


[Read more](https://docs.vespa.ai/en/reference/services-content.html#lidspace)