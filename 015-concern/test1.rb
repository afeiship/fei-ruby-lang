class A
end

A.class_eval do
  def method1
    puts 'this is a instance method of class A'
  end
end


a = A.new
a.method1