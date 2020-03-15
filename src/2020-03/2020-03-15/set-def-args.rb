DEF_ARGS = {
  name: "afei", age: 122,
}

def m1(opts = {})
  _opts = DEF_ARGS.merge(opts)
  puts DEF_ARGS
  puts "name: #{_opts[:name]}, args:#{_opts[:age]}"
end

puts m1(name: "jack")
