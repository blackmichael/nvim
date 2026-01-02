## handler

The `handler` element holds the configuration of a request handler. For each `binding` tag, the handler will be bound to the pertinent JDisc interfaces using the given binding.

* `binding` For JDisc request handlers, add this server binding to this handler.
* [`component`](https://docs.vespa.ai/en/reference/services-container.html#component) for injecting another component. Must be a declaration of a new component, not a reference.

[Read more](https://docs.vespa.ai/en/reference/services-container.html#handler)