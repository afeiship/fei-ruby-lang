require 'rake/packagetask'
desc "Another way to package file to file.tar.gz"

task :pkg2 do 
    Dir.chdir '/Users/feizheng/git-oschina/dacang-weipai'
    #   sh 'npm run dll'
    Rake::PackageTask.new("test",'1.2.3') do |p| 
          p.package_dir = "./dist"
          p.need_tar_gz = true 
          p.package_files.include("vendors/**")
    end
end