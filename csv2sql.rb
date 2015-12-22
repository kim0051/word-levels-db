#!/usr/bin/env ruby

require 'csv'

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

CSV.foreach(ARGV[0]) do |row|
  puts "INSERT INTO `words` (id, sub_id, word, mean, level) values (#{row[0]}, #{row[1]}, \"#{row[2]}\", \"#{row[3]}\", #{row[4]});"
end
