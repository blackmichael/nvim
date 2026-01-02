## attribute

Contained in [field](https://docs.vespa.ai/en/reference/schema-reference.html#field) or [struct-field](https://docs.vespa.ai/en/reference/schema-reference.html#struct-field). Specifies a property of an index structure attribute:

```
attribute [attribute-name]: [property]
```

or

```
attribute [attribute-name] {
    [property]
    [property]
    …
}
```

Read the [introduction to attributes](https://docs.vespa.ai/en/attributes.html) . If the attribute name is specified, it will be used instead of the field name as the name of the attribute.  
**Deprecated:** Deprecated, use a field with the wanted name outside the document instead.
Actions required when [adding or modifying attributes](https://docs.vespa.ai/en/reference/schema-reference.html#modifying-schemas) . Properties: [Read more](https://docs.vespa.ai/en/reference/schema-reference.html#attribute)