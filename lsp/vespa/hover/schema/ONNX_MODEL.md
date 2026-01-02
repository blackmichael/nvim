## onnx-model

Contained in [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile) or [schema](https://docs.vespa.ai/en/reference/schema-reference.html#schema). This defines a named ONNX model located in a file that can be used in ranking expressions using the "onnx" rank feature.

Prefer to define onnx models in the rank profiles using them. Onnx models are inherited from parent profiles and from the schema.

```
onnx-model [name] {
    [body]
}
```

The body of an ONNX model must contain:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#onnx-model)