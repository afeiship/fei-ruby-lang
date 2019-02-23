require 'sshkit'
require 'sshkit/dsl'
include SSHKit::DSL

on 'dacang@139.196.57.60', in: :sequence, wait: 5 do |host|
  with path: '/data/weixin/' do
    execute :ruby, '--version'
  end
end