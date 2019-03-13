class Person
end

Person.class_eval do
  def say_hello_class_eval
   "Hello class_eval!"
  end
end


Person.instance_eval do
  def say_hello_instance_eval
   "Hello instance_eval!"
  end
end

jimmy = Person.new

jimmy.instance_eval do
  def say_hi
    puts 'jimmy hello!';
  end
end

# p jimmy.say_hello # "Hello!"

# 对于Person Class而言：

p Person.singleton_methods
p Person.instance_methods(false)


p jimmy.singleton_methods