require 'pry'
require 'colorize'

def sum_array(a, b)
  a.each {|n| b += n}
  puts "The sum of #{a} is equal to #{b}."
end
