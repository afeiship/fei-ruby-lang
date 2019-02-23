module Foo


  
  def self.included(base)
    puts base # Baz
    base.extend(ClassMethods)
  end


  # Class methods:
  module ClassMethods
    def bar
      puts 'class method'
    end
  end



  # instance methods;
  def foo
    puts 'instance method'
  end
end

class Baz
  include Foo
end

Baz.bar
Baz.new.foo

p Baz.singleton_methods