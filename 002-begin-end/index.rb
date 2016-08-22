#!/usr/bin/env ruby -wKU

puts "Hello begin & end";

BEGIN{
  puts "Like initial?";
}
END{
  puts "Like destroy?";
}
