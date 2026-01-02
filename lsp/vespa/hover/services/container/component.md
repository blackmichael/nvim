## component

The `component` element holds the configuration of a [generic component](https://docs.vespa.ai/en/jdisc/injecting-components.html#special-components). Must be a declaration of a new component, not a reference.

Nested [`component`](https://docs.vespa.ai/en/reference/services-container.html#component) child elements can be added for injecting specific component instances. This is useful if there is more than one declared component of the same Java class. Refer to [Injecting components](https://docs.vespa.ai/en/jdisc/injecting-components.html) for details and examples.
[Read more](https://docs.vespa.ai/en/reference/services-container.html#component)