## minimum

Contained in [coverage](https://docs.vespa.ai/en/reference/services-content.html#coverage). Declares the minimum search coverage required before returning the results of a query. This number is in the range `[0, 1]`, with 0 being no coverage and 1 being full coverage.

The default is 1; unless configured otherwise a query will not return until all search nodes have responded within the specified timeout.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#minimum)