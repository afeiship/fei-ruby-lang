#!/usr/bin/env ruby -w
text = '';
File.open('./text.txt').each do |line|
  text<<line;
end

puts text;
