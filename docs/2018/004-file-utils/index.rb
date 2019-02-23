#!/usr/bin/env ruby -wKU
require 'fileutils'

h5_dist='/Users/feizheng/git-oschina/dacang-remix/dist';

puts h5_dist;

FileUtils.cd '/Users/feizheng/git-oschina/temp'   # Now /sbin/cp and /bin/cp are linked.
FileUtils.mv 'index.html','index-rb.html'
