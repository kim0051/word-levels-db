#!/usr/bin/env ruby

require 'csv'

if ARGV[0] == nil
  puts "Usage: csv2sql.rb word-levels.csv"
  exit 1
end

table = 'svl12000'

puts "PRAGMA encoding = \"UTF-8\";"
puts ""
puts "CREATE TABLE `#{table}` ("
puts "  `id` INTEGER PRIMARY KEY AUTOINCREMENT,"
puts "  `groupid` INTEGER,"
puts "  `word` TEXT,"
puts "  `mean` TEXT,"
puts "  `term` TEXT,"
puts "  `level` INTEGER"
puts ");"
puts ""

CSV.foreach(ARGV[0]) do |row|
  puts "INSERT INTO `#{table}` (`groupid`, `word`, `mean`, `term`, `level`) values (#{row[1]}, \"#{row[2]}\", \"#{row[4]}\", \"#{row[3]}\", #{row[5]});"
end
