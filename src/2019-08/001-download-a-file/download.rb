require "net/http"
require "json"

pkg_file = File.expand_path("./config.json", __FILE__)
pkg = JSON.load File.open "./config.json"
url = URI(pkg["url"])

# http
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

## debug
# http.set_debug_output($stdout)

# 设置请求头
header = { 'Cookie': pkg["cookie"] }

response = http.get(url, header)

File.open("download.zip", "wb") do |file|
  # file.write(response.body)
end

# cd /Users/feizheng/github/ruby-notes/src/2019-08/001-download-a-file
# ruby download.rb
