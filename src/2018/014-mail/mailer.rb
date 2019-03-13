#!/usr/bin/ruby

require 'mail'

smtp_163 = {
    :address => 'smtp.163.com',
    :port => 25,
    :domain => '163.com',
    :user_name => 'afeidisk000@163.com',
    :password => 'PASSWORD',
    :enable_starttls_auto => true,
    :openssl_verify_mode => 'none'
}

Mail.defaults { delivery_method :smtp, smtp_163 }

mail = Mail.new do
  from 'afeidisk000@163.com'
  to '1290657123@qq.com'
  subject '这是邮件主题-163[AutoEmail]'

  body 'body:hello send mail way 2 :)'
  # add_file '/Users/feizheng/github/fei-ruby-lang/014-mail/bd_logo1.png'
  # add_file :filename => 'spritesheet.png', :content => File.read('/Users/chenwei/Desktop/spritesheet.png')
end



mail.deliver!
