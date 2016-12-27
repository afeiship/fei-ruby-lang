#!/usr/bin/env ruby -w


class Dog
  def initialize(metres)
    @size = metres
  end

  def grow
    @size += metres
  end

  def speak
    if @size<0.2 then "yep"
    elsif @size<1 then "woof"
    else "ROOOA"
    end
  end
end


d = Dog.new(1.3)
puts d.speak
