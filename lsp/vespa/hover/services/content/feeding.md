## feeding

Contained in [searchnode](https://docs.vespa.ai/en/reference/services-content.html#searchnode), optional. Tune [proton](https://docs.vespa.ai/en/proton.html) settings for feed operations. Optional sub-elements:

* `concurrency`: A number between 0.0 and 1.0 that specifies the concurrency when handling feed operations, default 0.5. When set to 1.0, all cores on the cpu can be used for feeding. Changing this value requires restart of node to take effect.
* `niceness`: A number between 0.0 and 1.0 that specifies the niceness of the feeding threads, default 0.0 =\> not any nicer than anyone else. Increasing this number will reduce priority of feeding compared to search. The real world effect is hard to predict as the magic exists in the OS level scheduler. Changing this value requires restart of node to take effect.


```xml
<feeding>
    <concurrency>0.8</concurrency>
    <niceness>0.5</niceness>
</feeding>

```


[Read more](https://docs.vespa.ai/en/reference/services-content.html#feeding)