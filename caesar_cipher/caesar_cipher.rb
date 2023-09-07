# caesar cipher takes in a string and the shift factor and then outputs the ciphered string:

def caesar_cipher(string_arr, shift=1) 
    unless shift != 0
        return 'Need shift factor to encode!(eg: 2)'
    else
        encode_string(string_arr, shift)
    end
end

def encode_string(string_arr, shift)
    string_arr_ord = string_ordinal(string_arr)
    new_ord_with_shift = string_arr_ord.map do |char| 
        if char.match?(/\d/) 
            char.to_i.chr
        elsif ('a'..'z').include?(char)
            ( (char.ord - 'a'.ord + shift) % 26 + 'a'.ord ).chr
        elsif ('A'..'Z').include?(char)
            ( (char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
        else
            char
        end
    end
    encoded_string = new_ord_with_shift.join
    encoded_string
end

def string_ordinal(string)
    string_arr = string.split('')
    string_arr.map { |letter| letter.match?(/\w/) ? letter : letter.ord.to_s }    
end

# p string_ordinal("what a string!")
p caesar_cipher("What a string!", 5)
#Output => "\\mfy f xywnsl!"