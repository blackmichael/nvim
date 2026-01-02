## Docproc chain elements

Specifies how a docproc chain should be instantiated, and how the contained document processors should be ordered.

### chain

Contained in *document-processing* . Refer to the [chain reference](https://docs.vespa.ai/en/reference/services-processing.html#chain). Chains can [inherit](https://docs.vespa.ai/en/reference/services-processing.html#inherits) document processors from other chains and use [phases](https://docs.vespa.ai/en/reference/services-processing.html#phase) for ordering. Optional sub-elements:

* [documentprocessor element](https://docs.vespa.ai/en/reference/services-docproc.html#documentprocessor) (one or more), either a documentprocessor reference or documentprocessor definition. If the name given for a documentprocessor matches an *outer documentprocessor* , it is a *documentprocessor reference* - otherwise, it is a *documentprocessor definition* . If it is a documentprocessor definition, it is also an implicit documentprocessor reference saying: use *exactly* this documentprocessor. All these documentprocessor elements must have different name.
* [phase](https://docs.vespa.ai/en/reference/services-processing.html#phase) (one or more).
* [config](https://docs.vespa.ai/en/reference/config-files.html#generic-configuration-in-services-xml) (one or more - will apply to all *inner* documentprocessors in this docproc chain, unless overridden by individual inner documentprocessors).

[Read more](https://docs.vespa.ai/en/reference/services-docproc.html#docproc-chain-elements)