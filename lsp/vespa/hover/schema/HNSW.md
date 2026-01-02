## hnsw

Contained in [index](https://docs.vespa.ai/en/reference/schema-reference.html#index). Specifies optional parameters for an HNSW index to enable faster, approximate nearest neighbor search using the [nearestNeighbor](https://docs.vespa.ai/en/reference/query-language-reference.html#nearestneighbor) query operator.  
**Note:** Specifying the `index` keyword in the [indexing](https://docs.vespa.ai/en/reference/schema-reference.html#indexing) statement of a tensor creates an HNSW index with default settings, even if this block is not specified!
This implements a modified version of the Hierarchical Navigable Small World (HNSW) graphs algorithm ( [paper](https://arxiv.org/abs/1603.09320) ).

<br />

Only supported for the following tensor attribute field types:

* Single vector per document: Tensor type with one indexed dimension. Example: `tensor<float>(x[3])`
* Multiple vectors per document: Tensor type with one or more mapped dimensions and one indexed dimension. Examples: `tensor<float>(m{},x[3])`, `tensor<float>(m{},n{},x[3])`

HNSW indexes are not supported in [streaming search](https://docs.vespa.ai/en/streaming-search.html#differences-in-streaming-search).

```
hnsw {
    [parameter]: [value]
    [parameter]: [value]
    ...
}
```

The following parameters are used when building the index graph:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#index-hnsw)