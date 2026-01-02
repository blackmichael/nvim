## summary

Contained in [searchnode](https://docs.vespa.ai/en/reference/services-content.html#searchnode), optional. Tune various aspect with the handling of document summary. Optional sub-elements:

* `io`
  * `read`: Controls io read options used during reading of stored documents. Values are `directio` `mmap` `populate`. Default is `mmap`. `populate` will do an eager mmap and touch all pages.
* `store`
  * `cache`: Used to tune the cache used by the document store. Enabled by default, using up to 5% of available memory.
    * `maxsize`: The maximum size of the cache in bytes. If set, it takes precedence over [maxsize-percent](https://docs.vespa.ai/en/reference/services-content.html#summary-store-cache-maxsize-percent). Default is unset.
    * `maxsize-percent`: The maximum size of the cache in percent of available memory. Default is 5%.
    * `compression`
      * `type`: The compression type of the documents while in the cache. Possible values are , `none` `lz4` `zstd`. Default is `lz4`
      * `level`: The compression level of the documents while in cache. Default is 6
  * `logstore`: Used to tune the actual document store implementation (log-based).
    * `maxfilesize`: The maximum size (in bytes) per summary file on disk. Default value is 1GB. [document-store-compaction](https://docs.vespa.ai/en/proton.html#document-store-compaction)
    * `chunk`
      * `maxsize`: Maximum size (in bytes) of a chunk. Default value is 64KB.
      * `compression`
        * `type`: Compression type for the documents, `none` `lz4` `zstd`. Default is `zstd`.
        * `level`: Compression level for the documents. Default is 3.


```xml
<summary>
    <io>
        <read>directio</read>
    </io>
    <store>
        <cache>
            <maxsize-percent>5</maxsize-percent>
            <compression>
                <type>none</type>
            </compression>
        </cache>
        <logstore>
            <chunk>
                <maxsize>16384</maxsize>
                <compression>
                    <type>zstd</type>
                    <level>3</level>
                </compression>
            </chunk>
        </logstore>
    </store>
</summary>

```


[Read more](https://docs.vespa.ai/en/reference/services-content.html#summary)