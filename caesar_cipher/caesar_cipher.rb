# THIS PROGRAM USES THE CAESAR CIPHER TO ENCRYPT A MESSAGE.

def caesar_cipher(message, shift=1) 
    unless shift != 0
        return 'Need shift factor to encode!(eg: 2)'
    else
        encode_string(message, shift)
    end
end

def encode_string(string_arr, shift)

    string_arr_with_ord = string_ordinal(string_arr)
    new_string_with_shift = string_arr_with_ord.map do |char| 

        case char
        when /\d/
            char.to_i.chr
        when /[a-z]/
            ( (char.ord - 'a'.ord + shift) % 26 + 'a'.ord ).chr
        when /[A-Z]/
            ( (char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
        else
            char
        end
    end

    encoded_string = new_string_with_shift.join
    encoded_string
end

def string_ordinal(string)
    string_arr = string.split('')
    string_arr.map { |letter| letter.match?(/\w/) ? letter : letter.ord.to_s }    
end

print caesar_cipher("What a string!", 5)
#Output => "Bmfy f xywnsl!"