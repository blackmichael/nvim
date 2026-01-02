## processing

Example:

```
<processing>
    <processor id="processor1" class="com.yahoo.test.Processor1" />
    <chain id="default">
        <processor idref="processor1"/>
        <processor id="processor2" class="com.yahoo.test.Processor2"/>
    </chain>
    <renderer id="renderer1" class="com.yahoo.test.Renderer1" />
</processing>
```

[Read more](https://docs.vespa.ai/en/reference/services-processing.html#)