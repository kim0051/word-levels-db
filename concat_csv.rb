#!/usr/bin/env ruby

require 'csv'

@path = 'level-csv'

def csvfile(s)
  @path + "/level-#{s}.csv"
end 

count = 0
(1..12).each do |level|
  level_s = "%02d" % level
  
  CSV.foreach(csvfile(level_s)) do |row|
    id = row[0].to_i
    count += 1
    total_id = count
    word = row[1]
    mean_raw = row[2]
    _, hinshi, mean = mean_raw.split(/[\[\]]/)
    puts "#{total_id},#{id},#{word},\"#{hinshi}\",\"#{mean}\",#{level}"
  end
end