# property

class Person
  @@instance = nil

  def self.create
    return @@instance unless @@instance == nil
    @@instance = self.new
  end
end

p Person.create
