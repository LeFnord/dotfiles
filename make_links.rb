#!/usr/bin/env ruby

require "colorize"

dest = Dir.home

$stdout.print "home: ".green
$stdout.puts "#{dest}".blue

Dir.entries(__dir__).each do |file|
  link = File.join(dest,".#{file}")
  source = File.join(__dir__,file)
  unless File.exist?(link)
    $stdout.print "#{file} ".rjust(17).blue
    $stdout.print " →  ".green
    $stdout.puts "#{link}".blue
    File.symlink(source,link)
  end unless file.include?('.')
end