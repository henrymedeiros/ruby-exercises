dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, _substrings)
  result = {}

  words = text.downcase.split(' ')
  words.each do |word|
    _substrings.each do |string|
      if word.include?(string)
        if result.key?(string) #help here
          result[string]+=1
        else 
          result[string]=1
        end
      end
    end
  end
  puts result
  
end

substrings("Howdy partner, sit down down! How's it going?", dictionary)