def caesar_encode(string, shift)
    alphabet = ("a".."z").to_a
    new_string = string.split("")
    #shifted_index = (new_string.index + shift) %26
    new_string.map do |characters|
        if alphabet.include?(characters)
          shifted_index = (alphabet.index(characters) + shift)%26
          alphabet[shifted_index]
      else
          characters
      end
  end.join("")
end
puts "what would you like to encode?"
user_string = gets.chomp
puts "what do you want the offset to be?"
user_offset = gets.chomp.to_i 
puts caesar_encode(user_string, user_offset)

def decode(string, offset)
    caesar_encode(string,offset *-1)
end

puts "what would you like to decode?"
user_string = gets.chomp
puts "what do you want the offset to be?"
user_offset = gets.chomp.to_i 
puts caesar_encode(user_string, user_offset)