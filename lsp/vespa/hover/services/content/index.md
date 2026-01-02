## index

Contained in [searchnode](https://docs.vespa.ai/en/reference/services-content.html#searchnode), optional. Tune various aspect with the handling of disk and memory indexes. Optional sub-elements:

* `io`
  * `search`: Controls io read options used during search, values={mmap,populate}, default `mmap`. Using `populate` will eagerly touch all pages when index is loaded (after re-start or after index fusion is complete).
* `warmup`
  * `time`: Specifies in seconds how long the index shall be warmed up before being switched in for serving. During warmup, it will receive queries and posting lists will be iterated, but results ignored as they are duplicates of the live index. This will pull in the most important ones in the cache. However, as warming up an index will occupy more memory, do not turn it on unless you suspect you need it. And always benchmark to see if it is worth it.

    It's only potentially relevant for fields with indexing setting [index](https://docs.vespa.ai/en/schemas.html#indexing), which have regular disk based indexes, and where the disk indexes are merged/fused in the background. When switching the index, warmup can be used. Also note that [state-v1-health](https://docs.vespa.ai/en/reference/state-v1.html#state-v1-health) is independent of `warmup` - the node can be "up" before warmup.
  * `unpack`: Controls whether all posting features are pulled in to the cache, or only the most important. values={true, false}, default false.


```xml
<index>
    <io>
        <search>mmap</search>
    </io>
    <warmup>
        <time>60</time>
        <unpack>true</unpack>
    </warmup>
</index>

```


[Read more](https://docs.vespa.ai/en/reference/services-content.html#index)