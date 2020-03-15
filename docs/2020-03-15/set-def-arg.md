# set def args

```rb
DEF_ARGS = {
  name: "afei", age: 122,
}

def m1(opts = {})
  _opts = DEF_ARGS.merge(opts)
  puts DEF_ARGS # 这里的 DEF_ARGS 并不会被覆盖
  puts "name: #{_opts[:name]}, args:#{_opts[:age]}"
end

puts m1(name: "jack")
```