## removed-db

Contained in [searchnode](https://docs.vespa.ai/en/reference/services-content.html#searchnode), optional. Tune various aspect of the db of removed documents. Optional sub-elements:

* `prune`
  * `age`: Specifies how long (in seconds) we must remember removed documents before we can prune them away. Default is 2 weeks. This sets the upper limit on how long a node can be down and still be accepted back in the system, without having the index wiped. There is no point in having this any higher than the age of the documents. If corpus is re-fed every day, there is no point in having this longer than 24 hours.
  * `interval`: Specifies how often (in seconds) to prune old documents. Default is 3.36 hours (prune age / 100). No need to change default. Exposed here for reference and for testing.


```xml
<removed-db>
    <prune>
        <age>86400</age>
    </prune>
</removed-db>

```


[Read more](https://docs.vespa.ai/en/reference/services-content.html#removed-db)