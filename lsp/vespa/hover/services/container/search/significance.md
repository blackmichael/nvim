## significance

Contained in [searcher](https://docs.vespa.ai/en/reference/services-search.html#searcher). Specifies one or more global significance [models](https://docs.vespa.ai/en/reference/services-search.html#model).

```
<significance>
    <model model-id="significance-en-wikipedia-v1"/>
    <model url="https://some/uri/my-model.model.multilingual.json"/>
    <model path="models/my-model.no.json.zst"/>
</significance>
```

The models are either provided by *Vespa* or generated with [vespa-significance tool](https://docs.vespa.ai/en/operations-selfhosted/vespa-cmdline-tools.html#vespa-significance). The order determines model precedence - with the last element having the highest priority. To use these models, schema needs to [enable significance models in the rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#significance).

Sub-elements:

* [model](https://docs.vespa.ai/en/reference/services-search.html#model) (required, one or more)

[Read more](https://docs.vespa.ai/en/reference/services-search.html#significance)