## struct-field

Contained in [field](https://docs.vespa.ai/en/reference/schema-reference.html#field) or [struct-field](https://docs.vespa.ai/en/reference/schema-reference.html#struct-field). Defines how this struct field (a subfield of a struct) should be stored, indexed, searched, presented, and how it should influence ranking. The field in which this struct field is contained must be of type struct or a collection of type struct:

```
struct-field [name] {
    [body]
}
```

The body of a struct field is optional and may contain the following elements:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#struct-field)