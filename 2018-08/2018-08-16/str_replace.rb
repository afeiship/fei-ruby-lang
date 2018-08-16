
str = "My name is Robert"
str2 = "My name is Robert"
str3 = "Hello Hello Hello RUBY ruby"


# method1: use [] replace
str['Robert'] = 'Joe';

puts str;
# My name is Joe

# method2: gsub
rs2 = str2.gsub 'Robert','Joe'
puts rs2;
# My name is Joe



# method3: use regexp:
rs3 = str3.gsub /Hello/, 'hELLO';
puts rs3;
# hELLO hELLO hELLO RUBY ruby