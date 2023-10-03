def caesar_cipher (string, shift_factor)
    new_string = ""
    string.chars.each do |char|
   
        if (char.ord + shift_factor <= 90 || char.ord + shift_factor <= 122)
            ascii = char.ord + shift_factor
            new_string += ascii.chr

        else
            ascii = char.ord
            
            until (ascii >= 90 || ascii>=120)
                ascii+=1    
                shift_factor-=1
            end
            ascii -= 25
            ascii+=shift_factor-1
            new_string = ascii.chr
        end
    end
    puts new_string
end
    
    

puts caesar_cipher('ABC', 3)
