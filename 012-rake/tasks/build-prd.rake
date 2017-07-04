desc "Build node project [npm run build]"

task :build do 
  Dir.chdir '/Users/feizheng/git-oschina/dacang-weipai'
  sh 'npm run dll'
end