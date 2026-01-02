## threadpool

Specifies configuration for the thread pool for the jdisc search handler. All parameters are relative to the number of CPU cores - if a node has 8 vCPU with `threads=4`, the thread pool will have 32 threads. The queue size will be scaled with the effective number of threads. For `queue=25` with 8 vCPU and `threads=4` the queue will have capacity for 800 entries. If the `boost` attribute is specified, additional threads up to a total of `boost * vCPU` threads will be created on demand once the request queue is full. These additional threads will be destructed if idling for 5.0 seconds, waiting for new tasks. Requests are rejected once the maximum number of allowed threads is reached, all threads are busy and the request queue is full. See [Container Tuning](https://docs.vespa.ai/en/performance/container-tuning.html) for more details.

### threads

The number of permanent threads relative to CPU cores. Default value is `10`. In addition, there is a minimum effective value of 8.
[Read more](https://docs.vespa.ai/en/reference/services-search.html#threadpool)