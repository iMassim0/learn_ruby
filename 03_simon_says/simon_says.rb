#write your code

def echo(s)
  return s
end

def shout(h)
  return h.upcase
end

def repeat(c, p = 0)
  o = Array.new
  if p == 0
    o = c + " " + c
    return o
  else
    p.times do
      o << c
    end
    return (o.join(" "))
  end
end

# puts repeat("cucu", 3)

# puts "OH YEAH"

def start_of_word(a, b = 0)
  c = ""
  if b == 0
    return a.chars[b]
  elsif b != 0
    b.times do |i|
      c << a.chars[i]
    end
    return c
  end
end

# puts start_of_word("KILO")
# puts start_of_word("SUZY", 4)

def first_word(a)
  return (a.split(" "))[0]
end

# puts first_word("Hello to the queen")


def titleize(l)
  little_words = ["or", "and", "the", "over"]
  p = []
  a = l.split(" ")
  p << l.split(" ")[0].capitalize!
  a.slice!(0)
  # puts a
  # puts p
  a.each do |k|
    if little_words.include? k
      p << k
    else
      p << k.capitalize!
    end
  end

  return p.join(" ")
end

puts titleize("or biche or biche")
