class Hello
  def self.hi(name = "fei", age = 100)
    puts "hi #{name}, age: #{age}"
  end
end

Hello.hi
Hello.send(:hi, "afei", 102)
Hello.send(:hi, *["zf", 108])
