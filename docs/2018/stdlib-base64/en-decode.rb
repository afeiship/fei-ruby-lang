require "base64"

# QUZFSQ==
puts Base64.encode64('AFEI')

# AFEI
puts Base64.decode64('QUZFSQ==');