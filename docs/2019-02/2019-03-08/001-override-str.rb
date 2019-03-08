# ruby ./docs/2019-02/2019-03-08/001-override-str.rb

class String
  def -(str)
    self.gsub(str, "")
  end

  def -@
    downcase
  end
end

# puts "Hello" - "H"
# puts -"heelo"
str = "Teketa's Blog is GREAT"
puts "-#{str} = #{-str}"
