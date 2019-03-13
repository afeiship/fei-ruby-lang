#!/usr/bin/env ruby -w

class Dog1
  def size
    return @size
  end

  # size= 是一个设置方法
  def size=(inSize)
    @size = inSize
  end
end

# 另一种简短的方式去设置属性
# attr_reader
# attr_writer
# attr_accessor
class Dog2
  attr_accessor :size
end



d1 = Dog1.new;
d1.size="124";
puts d1.size;


puts "==========="
d2=Dog2.new;
d2.size="test dog2";
puts d2.size;
