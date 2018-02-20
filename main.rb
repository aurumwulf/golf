require 'pry'
require 'colorize'

def sum_array(a)
  b = 0
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

def multiples(n, v) 
  a = [] 
  m = v / n 
  while m > 0 
    a << n * m 
    m -= 1 
  end 
  puts a
end

def cipher(s, n)
end

def counter(s, b)
  a = s.scan(/#{b}/)
  puts "#{b} occurs in #{s} #{a.length} times."
end

def pairs(a)
end

def lovetest(f, s) 
  a = f.scan(/\w/) 
  b = s.scan(/\w/) 
  t = a.length + b.length
  m = 0 
  a.uniq.each do |c|
    b.uniq.each { |d| m += 1 if c == d }
  end
  puts "Total Chars: #{t}"
  puts "Chars In Common: #{m}"
  puts "Solution: #{t/m}"
end

def shoppinglist()
end

# sum_array([1, 2, 3, 4, 5]) 19
# rock_paper_scissors 88
# fizzbuzz 66
# multiples(3, 40) 33
# cipher()
# counter('tacotacotacocattacotacotaco', 'taco') 19
# pairs()
# lovetest('I love this code', 'This code loves me') 98
# shoppinglist()

