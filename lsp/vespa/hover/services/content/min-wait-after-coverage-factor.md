## min-wait-after-coverage-factor

Contained in [coverage](https://docs.vespa.ai/en/reference/services-content.html#coverage). Declares the minimum time for a query to wait for full coverage once the declared [minimum](https://docs.vespa.ai/en/reference/services-content.html#minimum) has been reached. This number is a factor that is multiplied with the time remaining at the time of reaching minimum coverage.

The default is 0; unless configured otherwise a query will return as soon as the minimum coverage has been reached, and the remaining search nodes appear to be lagging.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#min-wait-after-coverage-factor)