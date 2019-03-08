class AntiArray < Array
  def [](ind)
    self.fetch(-ind)
  end
end

y = AntiArray.new([1, 2, 3, 4])

p y[1]