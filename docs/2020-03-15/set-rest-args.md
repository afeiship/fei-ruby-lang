# set rest args


```rb
def gather_arguments(first: nil, **rest)
  p first, rest # first, ...rest 类似于js里的解构
end

gather_arguments(first: "only one args", name: "fei", github: "afeiship", hobby: "programing,photography")
```