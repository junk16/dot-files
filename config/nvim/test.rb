require 'date'

def fibonacci_numbers(limit)
  fibs = []
  a = 1
  b = 1
  while a <= limit
    fibs << a
    a, b = b, a + b
  end
  fibs
end

fibonacci_numbers(1000).each do |num|
  print num
end
