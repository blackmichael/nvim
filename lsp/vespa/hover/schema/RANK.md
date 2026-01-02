## rank

Contained in [field](https://docs.vespa.ai/en/reference/schema-reference.html#field), [struct-field](https://docs.vespa.ai/en/reference/schema-reference.html#struct-field) or [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile). Set the kind of ranking calculations that will be done for the field. Even though the actual ranking expressions decide the ranking, this setting tells Vespa which preparatory calculations and which data structures are needed for the field.

```
rank [field-name]: [ranking settings]
```

or

```
rank {
    [ranking setting]
}
```

The field name should only be specified when used inside a rank-profile. The following ranking settings are supported in addition to the default: [Read more](https://docs.vespa.ai/en/reference/schema-reference.html#rank)