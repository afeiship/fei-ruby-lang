require 'sshkit'
require 'sshkit/dsl'
include SSHKit::DSL


SSHKit.config.output_verbosity = :debug
# # The default format is pretty, which outputs colored text
# SSHKit.config.format = :pretty
# # Text with no coloring
# SSHKit.config.format = :simpletext
# # Red / Green dots for each completed step
# SSHKit.config.format = :dot
# # No output
# # SSHKit.config.format = :blackhole

# SSHKit::Backend::Netssh.configure do |ssh|
#   ssh.ssh_options = {
#       user: 'vagrant',
#       auth_methods: ['publickey']
#   }
# end

host = SSHKit::Host.new('vagrant@192.168.20.20')
host.password = "vagrant"


desc "Test sshkit"
task :sshello do 

  on host do |host|
    within '/home/vagrant/git-oschina/' do
      puts 'start to package xx.tar.gz'
      execute :tar,'zcf','fei-aliyun-centos.tar.gz','fei-aliyun-centos'
    end
  end
end