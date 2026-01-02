## max-wait-after-coverage-factor

Contained in [coverage](https://docs.vespa.ai/en/reference/services-content.html#coverage). Declares the maximum time for a query to wait for full coverage once the declared [minimum](https://docs.vespa.ai/en/reference/services-content.html#minimum) has been reached. This number is a factor that is multiplied with the time remaining at the time of reaching minimum coverage.

The default is 1; unless configured otherwise a query is allowed to wait its full timeout for full coverage even after reaching the minimum.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#max-wait-after-coverage-factor)