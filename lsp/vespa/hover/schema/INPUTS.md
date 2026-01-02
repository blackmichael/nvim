## inputs

Contained in [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile). List of inputs: Query features consumed by ranking expressions in this profile.

Query features are set either as a [request property](https://docs.vespa.ai/en/reference/query-api-reference.html#ranking.features), or equivalently from a [Searcher](https://docs.vespa.ai/en/searcher-development.html), by calling `query.getRanking().getFeatures().put("query(myInput)", myValue)`.

Query feature types can also be declared in [query profile types](https://docs.vespa.ai/en/query-profiles.html#query-profile-types), but declaring inputs in the profile needing them is usually preferable.

Inputs are inherited from inherited profiles.

```
inputs {
    name [type]? (: value)?
}
```

[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#inputs)