#write your code here

def add(a, b)
  return a + b
end

def subtract(c, d)
  return (c - d)
end

def sum(f)
  g = 0
  f.each do |e|
    g += e
  end
  return g
end

puts sum([])

puts sum([1,3,5,7,9])

def multiply(h)
  i = 1
  h.each do |j|
    i *= j
  end
  return i
end

puts multiply([1, 2, 3])

