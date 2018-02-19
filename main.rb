require 'pry'
require 'colorize'

def sum_array(a, b)
  a.each {|n| b += n}
  puts "The sum of #{a} is equal to #{b}."
end

def rock_paper_scissors
  puts 'Enter 1 for Rock, 2 for Paper, 3 for Scissors.'
  u = gets.to_i 
  w = 'W'
  l = 'L'
  t = 'T'
  c = 1 + rand(3)
  case u
    when c
      r = t
    when 1
      r = c == 3 ? w : l
    when 2
      r = c == 1 ? w : l
    else
      r = c == 2 ? w : l
  end  
  puts r    
end

def fizzbuzz
  n = 1 + rand(100)
  
  case true
    when n % 5 == 0 && n % 3 == 0
      puts "FIZZBUZZ"
    when n % 3 == 0 
      puts "FIZZ"
    when n % 5 == 0 
      puts "BUZZ"
    else
      puts n
  end
end

# sum_array([1, 2, 3, 4, 5]) 18
# rock_paper_scissors 88
# fizzbuzz 66

