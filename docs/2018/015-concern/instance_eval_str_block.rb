class Person
end

p = Person.new

# 字符串：
p.instance_eval <<EOF
    def p_say1
      puts 'say1'
    end
EOF

# 代码块：
p.instance_eval do
    def p_say2
      puts 'say2'
    end
end


p.p_say1
p.p_say2