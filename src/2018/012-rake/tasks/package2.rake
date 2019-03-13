require 'rake/packagetask'
Rake::PackageTask.new("test",'1.0.0') do |p| 
        # Dir.chdir '/Users/feizheng/git-oschina/dacang-weipai'
        # p.package_dir = 'test-pkgfiles'
        p.need_tar_gz = true 
        p.package_files.include("test-pkgfiles/*.*")

        puts p.inspect
end