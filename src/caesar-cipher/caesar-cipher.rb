
def caesar_cipher(str, shift_factor)
  ord_a = "a".ord
  ord_z = "z".ord

  ord_A = "A".ord
  ord_Z = "Z".ord
  char_arr = str.chars.map do |char|
    if (char.ord.between?(ord_a, ord_z))
      rotate_char_ord(ord_a, ord_z, char.ord, shift_factor).chr
    elsif (char.ord.between?(ord_A, ord_Z))
      rotate_char_ord(ord_A, ord_Z, char.ord, shift_factor).chr
    else
      char
    end
  end
  char_arr.join
end

def rotate_char_ord(first_index, last_index, char_index, shift_factor)
  all_chars_length = last_index - first_index
  normalized_char = char_index - first_index
  normalized_rotated_char = normalized_char + shift_factor
  rotation_overflow = normalized_rotated_char / all_chars_length
  rotated_char = (normalized_rotated_char%all_chars_length) - rotation_overflow
  rotated_char + first_index
end

puts caesar_cipher("What a string!", 5)