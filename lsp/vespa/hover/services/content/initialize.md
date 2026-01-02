## initialize

Contained in [searchnode](https://docs.vespa.ai/en/reference/services-content.html#searchnode), optional. Tune settings related to how the search node (proton) is initialized. Optional sub-elements:

* `threads`: The number of initializer threads used for loading structures from disk at proton startup. The threads are shared between document databases when the value is larger than 0. Default value is the number of document databases + 1.
  * When set to larger than 1, document databases are initialized in parallel
  * When set to 1, document databases are initialized in sequence
  * When set to 0, 1 separate thread is used per document database, and they are initialized in parallel.


```xml
<initialize>
    <threads>2</threads>
</initialize>

```


[Read more](https://docs.vespa.ai/en/reference/services-content.html#initialize)