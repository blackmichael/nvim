## constant

*Prefer to define constants in the rank profiles that need them, with rank profile inheritance to avoid repetition. See [constants](https://docs.vespa.ai/en/reference/schema-reference.html#constants).*

Contained in [schema](https://docs.vespa.ai/en/reference/schema-reference.html#schema). This defines a named constant tensor located in a file with a given type that can be used in ranking expressions using the rank feature [constant(name)](https://docs.vespa.ai/en/reference/rank-features.html#constant(name)):

```
constant [name] {
    [body]
}
```

The body of a constant must contain: [Read more](https://docs.vespa.ai/en/reference/schema-reference.html#constant)