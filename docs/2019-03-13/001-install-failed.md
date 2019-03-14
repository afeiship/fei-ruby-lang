# install failed:

~~~
$ rbenv install 2.3.3
ruby-build: use openssl from homebrew
Downloading ruby-2.3.3.tar.bz2...
-> https://cache.ruby-china.com/pub/ruby/2.3/ruby-2.3.3.tar.bz2
Installing ruby-2.3.3...
ruby-build: use readline from homebrew

BUILD FAILED (OS X 10.13.4 using ruby-build 20190130-6-g2ab166e)

Inspect or clean up the working tree at /var/folders/rf/j1pm5t090fqb1f9x6bbs0pd00000gp/T/ruby-build.20190313212216.1057
Results logged to /var/folders/rf/j1pm5t090fqb1f9x6bbs0pd00000gp/T/ruby-build.20190313212216.1057.log
~~~

## solution1(failed):
```shell
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install
rvm install 2.3.3
```

## solution2(failed)
```shell
# https://qiita.com/muzou/items/2512913013d1d8ab99e0
# https://github.com/rbenv/ruby-build/issues/1061
RUBY_CONFIGURE_OPTS="--disable-dtrace" rbenv install 2.3.6
```
