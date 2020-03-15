def gather_arguments(first: nil, **rest)
  p first, rest
end

gather_arguments(first: "only one args", name: "fei", github: "afeiship", hobby: "programing,photography")
