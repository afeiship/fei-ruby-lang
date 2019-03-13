#!/usr/bin/env ruby -w
path = ARGV[0]
fail "specify filename to create" unless path

File.open(path,'w') do |f|
  f.puts "#!/usr/bin/env ruby -w"
end

File.chmod(0755,path)
system 'atom',path
