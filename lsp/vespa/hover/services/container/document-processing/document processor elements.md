## Document Processor elements

*documentprocessor* elements are contained in [docproc chain elements](https://docs.vespa.ai/en/reference/services-docproc.html#chain) or in the *document-processing* root.

A documentprocessor element is either a document processor definition or document processor reference. The rest of this section deals with document processor definitions; document processor references are described in [docproc chain elements](https://docs.vespa.ai/en/reference/services-docproc.html#docproc-chain-elements).

A documentprocessor definition causes the creation of exactly one document processor instance. This instance is set up according to the content of the documentprocessor element.

A documentprocessor definition contained in a docproc chain element defines an *inner document processor* . Otherwise, it defines an *outer document processor.*

For inner documentprocessors, the name must be unique inside the docproc chain. For outer documentprocessors, the component id must be unique. An inner documentprocessor is not permitted to have the same name as an outer documentprocessor.

Optional sub-elements:

* provides, a single name that should be added to the provides list
* before, a single name that should be added to the before list
* after, a single name that should be added to the after list
* config (one or more)

For more information on provides, before and after, see [Chained components](https://docs.vespa.ai/en/components/chained-components.html).
[Read more](https://docs.vespa.ai/en/reference/services-docproc.html#document-processor-elements)