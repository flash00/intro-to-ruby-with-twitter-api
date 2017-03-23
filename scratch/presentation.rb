# P1
:symbol.object_id
# http://www.ascii-code.com/
"!" < "A"
"M" < "a"
"M" < "N"
"M" < "L"
"Google" < "Pandora"
"Google" < "pandora"
"google" < "Pandora"
"Aardvark" < "Aaardvark"
"Aardvark" < "Aardvark"
"Aardvark" == "Aardvark"
"Aardvark" < "Ardvark"

def reverse(string)
  reversed_words = string.split.map do |word|
    if !/\Ahttp/.match(word)
      word.reverse
    else  
      word
    end  
  end  
  reversed_words.join(" ")
end  
