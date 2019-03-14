# reinstall CommandLineTools

~~~
ld: warning: text-based stub file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation.tbd and library file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation are out of sync. Falling back to library file for linking.
~~~


```shell
# https://github.com/EOSIO/eos/issues/5418
# https://stackoverflow.com/questions/51314888/ld-warning-text-based-stub-file-are-out-of-sync-falling-back-to-library-file
# https://github.com/golang/go/issues/26073

sudo mv /Library/Developer/CommandLineTools /Library/Developer/CommandLineTools.old
xcode-select --install
sudo rm -rf /Library/Developer/CommandLineTools.old
```