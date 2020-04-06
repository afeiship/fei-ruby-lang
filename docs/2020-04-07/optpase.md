# optparse

```rb
require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end
end.parse!

p options
p ARGV
```

## resources
- https://docs.ruby-lang.org/en/2.4.0/OptionParser.html
- https://github.com/leejarvis/slop