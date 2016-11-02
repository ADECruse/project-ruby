def add(x, y)
  (x + y)
end

def subtract(x, y)
  (x - y)
end

def sum(numbers = [])
  x = 0
  array_total = 0
  while x < numbers.length
    array_total = numbers[x] + array_total
    x = x + 1
  end
  array_total
end

def multiply(numbers = [])
  x = 1
  array_total = numbers[0]
  while x < numbers.length
    array_total = array_total * numbers[x]
    x = x + 1
  end
  array_total
end
