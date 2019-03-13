#!/usr/bin/env ruby -w

Dir.chdir('test') do
  Dir['*.jpg'].each_with_index do |item,index|
    puts (File.size(item)/1000).to_s+'KB';
  end
end


# http://www.infoq.com/cn/articles/ruby-file-upload-ssh-intro/
# http://www.runoob.com/ruby/ruby-exceptions.html
