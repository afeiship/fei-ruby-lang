desc "Package dist to shanggu.tar.gz"
task :package do 
    Dir.chdir '/Users/feizheng/git-oschina/dacang-weipai'
    sh 'mv dist shanggu'
    sh 'tar zcf shanggu.tar.gz shanggu'
    sh 'rm -rf shanggu'
end