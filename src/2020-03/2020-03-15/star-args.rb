def puts_two(*args)
  arg1, arg2 = args
  puts args.class
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

puts_two 1, 2
