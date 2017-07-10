class MyClass

  def MyClass.first_sing_method
    'first'
  end

  def self.second_sing_method
    'second'
  end

  class << self
    def third_sing_method
      'third'
    end
  end

  class << MyClass
    def fourth_sing_method
      'fourth'
    end
  end
end

def MyClass.fifth_sing_method
  'fifth'
end

MyClass.define_singleton_method(:sixth_sing_method) do
  'sixth'
end



p MyClass.singleton_methods

# 这里可以看出来：Ruby的singleton_methods就是ClassMethods