Calculates the [Okapi BM25](https://en.wikipedia.org/wiki/Okapi_BM25) ranking function over each element in the given *multi-valued* [indexed string field](https://docs.vespa.ai/en/reference/schema-reference.html#indexing-index) and creates a tensor with a single mapped dimension containing the bm25 score for each matching element. The element indexes (starting at 0) are used as dimension labels. This feature is more expensive than [bm25](https://docs.vespa.ai/en/reference/rank-features.html#bm25), does not need the *enable-bm25* flag and can be tuned with [rank properties](https://docs.vespa.ai/en/reference/rank-feature-configuration.html#elementwise-bm25).

The *cell_type* parameter can be omitted (the default value is `double`) except when setting rank properties.

Example: If the `content` field is of type `array<string>` where query terms are found in elements 2 and 5 then the feature `elementwise(bm25(content),x,float)` as a summary feature might be shown as:

```
"elementwise(bm25(content),x,float)": {
  "type": "tensor(x{})",
  "cells": {
    "2": 0.5112776,
    "5": 0.1021805
  }
}
```


Default: tensor<cell_type>(dimension{}):{}