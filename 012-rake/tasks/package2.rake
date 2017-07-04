require 'rake/packagetask'
    Rake::PackageTask.new("test",'1.2.3') do |p| 
            # Dir.chdir '/Users/feizheng/git-oschina/dacang-weipai'
            p.package_dir = 'test-pkgfiles'
          p.need_tar_gz = true 
          p.package_files.include("*.*")

          puts p.inspect
    end