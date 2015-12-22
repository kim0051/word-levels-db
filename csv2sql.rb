#!/usr/bin/env ruby

require 'csv'

if ARGV[0] == nil
  puts "Usage: csv2sql.rb word-levels.csv"
  exit 1
end

puts "CREATE TABLE `words` ("
puts "  `id` INTEGER PRIMARY KEY AUTOINCREMENT,"
puts "  `groupid` INTEGER,"
puts "  `word` TEXT UNIQUE,"
puts "  `mean` TEXT,"
puts "  `level` INTEGER"
puts ");"
puts ""

CSV.foreach(ARGV[0]) do |row|
  puts "INSERT INTO `words` (`id`, `groupid`, `word`, `mean`, `level`) values (#{row[0]}, #{row[1]}, \"#{row[2]}\", \"#{row[3]}\", #{row[4]});"
end
