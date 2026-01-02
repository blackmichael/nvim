## index

Contained in [field](https://docs.vespa.ai/en/reference/schema-reference.html#field) or [schema](https://docs.vespa.ai/en/reference/schema-reference.html#schema). Sets index parameters.

Content in [string](https://docs.vespa.ai/en/reference/schema-reference.html#string)-fields with *index* is [normalized](https://docs.vespa.ai/en/reference/schema-reference.html#normalizing) and [tokenized](https://docs.vespa.ai/en/linguistics.html#tokenization) by default. The field can be single- or multivalued (e.g. `array<string>`).

For [tensor](https://docs.vespa.ai/en/reference/schema-reference.html#tensor)-typed fields, *index* creates an [HNSW](https://docs.vespa.ai/en/reference/schema-reference.html#index-hnsw) index for [Approximate Nearest Neighbor](https://docs.vespa.ai/en/nearest-neighbor-search-guide.html) queries, with a default [euclidean](https://docs.vespa.ai/en/reference/schema-reference.html#euclidean) distance metric. The index is built after a [content node restart](https://docs.vespa.ai/en/reference/schema-reference.html#changes-that-require-restart-but-not-re-feed) (automated on Vespa Cloud).

Examples:

```
index [index-name]: [property]
```

or

```
index [index-name] {
    [property]
    [property]
    …
}
```

**Deprecated:** If `index-name` is specified, it will be used instead of the field name as the name of the index. This use is deprecated, use a synthetic field with the wanted name outside the `document` block instead - see an [example](https://docs.vespa.ai/en/indexing.html#date-indexing).
Parameters: [Read more](https://docs.vespa.ai/en/reference/schema-reference.html#index)