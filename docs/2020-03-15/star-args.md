# star args

```rb
def puts_two(*args)
  arg1, arg2 = args
  puts args.class  # Array
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

puts_two 1, 2
```

---
1. 将参数列表转成数组
2. 类假于js里的 arguments，但不用入参的情况