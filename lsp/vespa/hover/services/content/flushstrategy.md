## flushstrategy

Contained in [searchnode](https://docs.vespa.ai/en/reference/services-content.html#searchnode), optional. Tune the *native*-strategy for flushing components to disk - a smaller number means more frequent flush:

* *Memory gain* is how much memory can be freed by flushing a component
* *Disk gain* is how much disk space can be freed by flushing a component (typically by using compaction)

Refer to [Proton maintenance jobs](https://docs.vespa.ai/en/proton.html#proton-maintenance-jobs). Optional sub-elements:

* `native`:
  * `total`
    * `maxmemorygain`: The total maximum memory gain (in bytes) for *all* components before running flush, default 4294967296 (4 GB)
    * `diskbloatfactor`: Trigger flush if the total disk gain (in bytes) for *all* components is larger than the factor times current total disk usage, default 0.25
  * `component`
    * `maxmemorygain`: The maximum memory gain (in bytes) by *a single* component before running flush, default 1073741824 (1 GB)
    * `diskbloatfactor`: Trigger flush if the disk gain (in bytes) by *a single* component is larger than the given factor times the current disk usage by that component, default 0.25
    * `maxage`: The maximum age (in seconds) of unflushed content for a single component before running flush, default 111600 (31h)
  * `transactionlog`
    * `maxsize`: The total maximum size (in bytes) of [transaction logs](https://docs.vespa.ai/en/proton.html#transaction-log) for all document types before running flush, default 21474836480 (20 GB)
  * `conservative`
    * `memory-limit-factor`: When [resource-limits (in proton)](https://docs.vespa.ai/en/reference/services-content.html#resource-limits-proton) for memory is reached, flush more often by downscaling `total.maxmemorygain` and `component.maxmemorygain`, default 0.5
    * `disk-limit-factor`: When [resource-limits (in proton)](https://docs.vespa.ai/en/reference/services-content.html#resource-limits-proton) for disk is reached, flush more often by downscaling `transactionlog.maxsize`, default 0.5


```xml
<flushstrategy>
    <native>
        <total>
            <maxmemorygain>4294967296</maxmemorygain>
            <diskbloatfactor>0.2</diskbloatfactor>
        </total>
        <component>
            <maxmemorygain>1073741824</maxmemorygain>
            <diskbloatfactor>0.2</diskbloatfactor>
            <maxage>111600</maxage>
        </component>
        <transactionlog>
            <maxsize>21474836480</maxsize>
        </transactionlog>
        <conservative>
            <memory-limit-factor>0.5</memory-limit-factor>
            <disk-limit-factor>0.5</disk-limit-factor>
        </conservative>
    </native>
</flushstrategy>

```


[Read more](https://docs.vespa.ai/en/reference/services-content.html#flushstrategy)