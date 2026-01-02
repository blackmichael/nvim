## persistence-threads

Contained in [tuning](https://docs.vespa.ai/en/reference/services-content.html#tuning). Defines the number of persistence threads per partition on each content node. A content node executes bucket operations against the persistence engine synchronously in each of these threads. 8 threads are used by default. Override with the **count** attribute.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#persistence-threads)