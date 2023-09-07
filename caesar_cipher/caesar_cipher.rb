# caesar cipher takes in a string and the shift factor and then outputs the ciphered string:

def caesar_cipher(string_arr, shift) 
    unless shift != 0
        return 'Need shift factor to encode!(eg: 2)'
    else
    string_arr_ord = string_ordinal(string_arr)
    new_ord_with_shift = string_arr_ord.map { |ord| ord.to_s.match?(/\d/) ? ord + shift : ord }
    encoded_string = new_ord_with_shift.map { |ord| ord.to_s.match?(/\d/) ? ord.chr : ord }
    encoded_string.join
    end
end

def string_ordinal(string)
    string_arr = string.split('')
    string_arr_ord = string_arr.map { |letter| letter.match?(/\w/) ? letter.ord : letter }    
end

p caesar_cipher("What a string!", 5)
#Output => "\\mfy f xywnsl!"