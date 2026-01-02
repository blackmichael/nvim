## model

Contained in [significance](https://docs.vespa.ai/en/reference/services-search.html#significance). Specifies [global significance model](https://docs.vespa.ai/en/significance.html#global-significance-model). Models are identified by `model-id` or by providing `url` or `path` to a model file in the application package.

Models with `model-id` are provided by *Vespa* and listed [here](https://docs.vespa.ai/en/cloud/model-hub.html#significance-models). Example with `model-id`:

```
<model model-id="significance-en-wikipedia-v1"/>
```

A model specified with `url` and `path` are JSON files, which can be also compressed with [zstandard](https://facebook.github.io/zstd/). Model files can be generated using [vespa-significance tool](https://docs.vespa.ai/en/operations-selfhosted/vespa-cmdline-tools.html#vespa-significance). Example with `url`:

```
<model url="https://some/uri/mymodel.multilingual.json"/>
```

Models with `path` should be placed in the application package. The path is relative to the application package root. Example with `path`:

```
<model path="models/mymodel.no.json.zst"/>
```

[Read more](https://docs.vespa.ai/en/reference/services-search.html#model)