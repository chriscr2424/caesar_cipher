def caesar_cipher(string,shift_factor)
  shift_factor = shift_factor % 26

  new_string = string.chars.map do |char|
    if char.ord.between?(97,122)
      base = 'a'.ord
    elsif char.ord.between?(65,90)
      base = 'A'.ord
    else
      next char
    end

    ((char.ord - base + shift_factor) % 26 + base).chr

  end.join

  puts new_string

end

puts "Please enter string for encryption"
string_input = gets.chomp

puts "Please enter shift factor"
shift_input = gets.chomp.to_i

caesar_cipher(string_input, shift_input)