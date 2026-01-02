## accesslog

Configures properties of the accesslog. The default type is `json` that will give output in (line-based) [JSON format](https://docs.vespa.ai/en/access-logging.html). See [Access logging](https://docs.vespa.ai/en/access-logging.html) for configuration details. Setting the type to `vespa` gives a classic Apache CLF-like format.

Access logging can be disabled by setting the type to `disabled`.
[Read more](https://docs.vespa.ai/en/reference/services-container.html#accesslog)