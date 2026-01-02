## sync-transactionlog

Contained in [proton](https://docs.vespa.ai/en/reference/services-content.html#proton). Default value is true. If true, the transactionlog is synced to disk after every write. This enables the transactionlog to survive power failures and kernel panic. The sync cost is amortized over multiple feed operations. The faster you feed the more operations it is amortized over. So with a local disk this is not known to be a performance issue. However, if using NAS (Network Attached Storage) like EBS on AWS one can see significant feed performance impact. For one particular case, turning off sync-transactionlog for EBS gave a 60x improvement.

With sync-transactionlog turned off, the risk of losing data depends on the kernel's [sysctl settings.](https://www.kernel.org/doc/html/latest/admin-guide/sysctl/vm.html#dirty-background-bytes) For example, this is a common default:

```
# sysctl -a
...
vm.dirty_expire_centisecs = 3000
vm.dirty_ratio = 20
vm.dirty_writeback_centisecs = 500
...
```

With this configuration, the worse case scenario is to lose 35 seconds worth of transactionlog, but no more than 1/20 of the free memory. Because kernel flusher threads wake up every 5s (dirty_writeback_centisecs) and write data older than 30s (dirty_expire_centisecs) from memory to disk. But if un-synced data exceeds 1/20 of the free memory, the Vespa process will sync it (dirty_ratio).

The above also assumes that all copies of the data are lost at the same time **and** that kernels on all these nodes flush at the same time: realistic scenario only with one copy.

Adjust these [sysctl settings](https://www.kernel.org/doc/html/latest/admin-guide/sysctl/vm.html#dirty-background-bytes) to manage the trade-off between data loss and performance. You'll see more in those kernel docs: for example, thresholds can be expressed in bytes.
[Read more](https://docs.vespa.ai/en/reference/services-content.html#sync-transactionlog)