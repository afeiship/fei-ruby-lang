#!/usr/bin/env ruby -w
require 'net/http'
url = URI.parse('http://www.baidu.com');
response = Net:HTTP.start(url.host,url.port) do |http|
  http.get(url.path)
end

content = response.body;
