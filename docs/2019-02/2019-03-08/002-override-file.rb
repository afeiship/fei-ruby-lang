class File
  class << self
    alias_method :basename_without_hello, :basename

    def basename(*args)
      puts "hello world!"
      basename_without_hello(*args)
    end
  end
end

p File.basename "./docs/2019-02/2019-03-08/001-override-str.rb"
