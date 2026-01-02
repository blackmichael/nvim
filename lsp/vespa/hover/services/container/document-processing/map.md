## Map

Set up a field name mapping from the name(s) of field(s) in the input documents to the names used in a deployed docproc. The purpose is to reuse functionality without changing the field names. The example below shows the configuration:

```
<chain name="myChain">
    <map>
        <field in-document="key" in-processor="id"/>
    </map>
    <documentprocessor type="CityDocProc">
        <map>
            <field in-document="town" in-processor="city" doctype="restaurant"/>
        </map>
    </documentprocessor>
    <documentprocessor type="CarDocProc">
        <map>
            <field in-document="engine.cylinders" in-processor="cyl"/>
        </map>
    </documentprocessor>
</chain>
```

In the example, a chain is deployed with 2 docprocs.

For the chain, a mapping from *key* to *id* is set up. Imagine that some or all of the docprocs in the chain read and write to a field called *id* , but we want this functionality to the document field *key*.

Furthermore, a similar thing is done for the `CityDocProc`: The docproc accesses the field *city* , whereas it's called *town* in the feed. The mapping only applies to the document type *restaurant*.

The `CarDocProc` accesses a field called *cyl* . In this example this is mapped to the field *cylinders* of a struct *engine* using a dotted notation.

If you specify mappings on different levels of the config (say both for a cluster and a docproc), the mapping closest to the actual docproc will take precedence.
[Read more](https://docs.vespa.ai/en/reference/services-docproc.html#map)