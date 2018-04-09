class Book
# write your code here

  attr_accessor :title

  def title=(new)

    little_words = ["or", "and", "the", "over", "in", "of", "a", "an"]
    je_en = ["i"]

    if new.split(" ").length > 1

    titCAP = []

    tempo = new.split(" ")

    i = 0

    tempo.each do |k|

      titCAP << k if Integer(k) rescue false

      if tempo[0] == k
        titCAP << k.capitalize!

      elsif je_en.include? k
        titCAP << k.capitalize!

      elsif little_words.include? k
      titCAP << k

      else
      titCAP << k.capitalize!
      # puts titCAP.join(".")
      end

    tempo.drop(i)
    i += 1
    end

    @title = (titCAP.join(" ")).chomp(" ")

    else

      return @title = new.capitalize!

    end

  end

end

temp = Book.new

puts temp.title = "the i wish i knew the when i was 20"

puts temp.title

