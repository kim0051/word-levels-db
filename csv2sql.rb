#!/usr/bin/env ruby

if ARGV[0] == nil
  puts "Usage: csv2sql.rb word-levels.csv"
  exit 1
end

puts "CREATE TABLE `words` ("
puts "  id integer primary key autoincrement,"
puts "  sub_id integer,"
puts "  word text,"
puts "  mean text,"
puts "  level integer"
puts ");"
puts ""

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  d = line.split(",")
  puts "INSERT INTO `words` (id, sub_id, word, mean, level) values (#{d[0]}, #{d[1]}, \"#{d[2]}\", \"#{d[3]}\", #{d[4]});"
end
