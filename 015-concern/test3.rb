module Foo
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def bar
      puts 'class method'
    end
  end

  def foo
    puts 'instance method'
  end
end

class Baz
  include Foo
end


