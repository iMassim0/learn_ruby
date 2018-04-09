#write your code here

def translate(w)

  vowel = ["a","e","i","o","u"]
  ay = "ay"

  if w.split(" ").length == 1
    return w[3..-1] + w[0..2] + ay if !(vowel.include? w[0]) &&  !(vowel.include? w[1]) && !(vowel.include? w[2]) || !(vowel.include? w[0]) &&  !(vowel.include? w[1]) && w[2] == vowel[4]
    return w[2..-1] + w[0..1] + ay if !(vowel.include? w[0]) &&  !(vowel.include? w[1]) || !(vowel.include? w[0]) &&  w[1] == vowel[4]
    return w[1..-1] + w[0] + ay if !(vowel.include? w[0]) && (vowel.include? w[1]) && w[1] != vowel[4]
    return w + ay if (vowel.include? w[0])

  elsif w.split(" ").length > 1
    chain = []
    w.split(" ").each do |k|
      chain << k[3..-1] + k[0..2] + ay if !(vowel.include? k[0]) &&  !(vowel.include? k[1]) && !(vowel.include? k[2]) || !(vowel.include? k[0]) &&  !(vowel.include? k[1]) && k[2] == vowel[4]
      chain << k[2..-1] + k[0..1] + ay if !(vowel.include? k[0]) &&  !(vowel.include? k[1]) || !(vowel.include? k[0]) &&  k[1] == vowel[4]
      chain << k[1..-1] + k[0] + ay if !(vowel.include? k[0]) && (vowel.include? k[1]) && k[1] != vowel[4]
      chain << k + ay if (vowel.include? k[0])
    end
    return chain.join(" ")
  end
end

# puts translate("apple")    # appleay
# puts translate("banana")   # ananabay
# puts translate("cherry")   # errychay
# puts translate("eat pie")               # eatay iepay
# puts translate("three")    # eethray
# puts translate("school")   # oolschay
# puts translate("quiet")    # ietquay
# puts translate("square")   # aresquay
# puts translate("the quick brown fox")   # ethay ickquay ownbray oxfay

