require 'sshkit'
require 'sshkit/dsl'
include SSHKit::DSL


SSHKit.config.output_verbosity = :info
host = SSHKit::Host.new('USER@DOMAN.COM_OR_IPADDRESS')
host.password = "YOUR_PASSWORD"


desc "Test sshkit ip host"
task :sshdc do 

  on host do |host|
    within '/data/dir/' do
      execute :ls, '-alh'
    end
  end
end