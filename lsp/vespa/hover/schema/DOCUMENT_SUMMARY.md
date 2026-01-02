## document-summary

Contained in [schema](https://docs.vespa.ai/en/reference/schema-reference.html#schema). An explicitly defined document summary. By default, a document summary named `default` is created. Using this element, other document summaries containing a different set of fields can be created.

```
document-summary [name] inherits [document-summary1], [document-summary2], ... {
    [body]
}
```

The `inherits` attribute is optional. If defined, it contains the name of other document summaries in the same schema (or a parent) which this summary should inherit the fields of. Refer to [schema inheritance](https://docs.vespa.ai/en/schemas.html#schema-inheritance) for examples.

The body of a document summary consists of:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#document-summary)