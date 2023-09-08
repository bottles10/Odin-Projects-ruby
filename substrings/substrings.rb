def substrings(strings, dictionary)
    strings = strings.downcase
    strings.split.reduce(Hash.new(0)) do |counter, string|
        dictionary.map do |word|
            if string.include?(word.downcase)
                counter[word] += 1
            end
        end
        counter
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Outputs: => {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, 
#              i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}