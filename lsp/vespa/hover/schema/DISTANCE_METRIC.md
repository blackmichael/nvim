## distance-metric

Specifies the distance metric to use with the [nearestNeighbor](https://docs.vespa.ai/en/reference/query-language-reference.html#nearestneighbor) query operator to calculate the distance between document positions and the query position. Only relevant for tensor attribute fields, where each tensor holds one or multiple vectors.

Which distance metric to use depends on the model used to produce the vectors; it must match the distance metric used during representation learning (model learning). If you are using an "off-the-shelf" model to vectorize your data, please ensure that the distance metric matches the distance metric suggested for use with the model. Different types of vectorization models use different types of distance metrics.  
**Important:** When changing the `distance-metric` or `max-links-per-node`, the content nodes must be restarted to rebuild the HNSW index - see [changes that require restart but not re-feed](https://docs.vespa.ai/en/reference/schema-reference.html#changes-that-require-restart-but-not-re-feed)

The calculated distance will be used to select the closest hits for *nearestNeighbor* query operator, but also to build the [HNSW](https://docs.vespa.ai/en/approximate-nn-hnsw.html) index (if specified) and to produce the [distance](https://docs.vespa.ai/en/reference/rank-features.html#distance(dimension,name)) and [closeness](https://docs.vespa.ai/en/reference/rank-features.html#closeness(dimension,name)) ranking features.

<br />

```
distance-metric: [metric]
```

These are the available metrics; the expressions given for *distance* and *closeness* assume a query vector *qv = \[x0, x1, ...\]* and an attribute vector *av = \[y0, y1, ...\]* with same dimension of size *n* for all vectors.

<br />

[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#distance-metric)