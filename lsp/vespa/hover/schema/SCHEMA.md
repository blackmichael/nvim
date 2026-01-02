## schema

The root element of schemas. A schema describes a type of data and what we should compute over it. A schema must be defined in a file named `[schema-name].sd`.

```
schema [name] inherits [name] {
    [body]
}
```

The `inherits` attribute is optional. If a schema is inherited, this schema will include all the constructs of it as if they were defined in this schema (except the parent document type). The document type in this must declare that it inherits the document type of the parent schema.

The body is mandatory and may contain:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#schema)