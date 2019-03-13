class Person
end

Person.instance_eval do
  def human?
    true
  end
end

p Person.human? # true