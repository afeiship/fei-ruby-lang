# retuning

```rb
# Without returning
def foo
  values = []
  values << "bar"
  values << "baz"
  return values
end

foo # => ['bar', 'baz']

# returning with a local variable
def foo
  returning values = [] do
    values << 'bar'
    values << 'baz'
  end
end

foo # => ['bar', 'baz']

# returning with a block argument
def foo
  returning [] do |values|
    values << 'bar'
    values << 'baz'
  end
end

foo # => ['bar', 'baz']
```