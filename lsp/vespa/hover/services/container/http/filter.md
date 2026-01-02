## filter

The definition of a single filter, for referencing when defining chains. If a single filter is to be used in different chains, it is cleaner to define it directly under `http` and then refer to it with `id`, than defining it inline separately for each chain. The following filter types are supported:

* RequestFilter
* ResponseFilter
* SecurityRequestFilter
* SecurityResponseFilter

Security\[Request/Response\]Filters are automatically wrapped in Security\[Request/Response\]FilterChains. This makes them behave like regular Request/Response filters with respect to chaining.
[Read more](https://docs.vespa.ai/en/reference/services-http.html#filter)