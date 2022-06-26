def caesar_cipher(text, shift)
  ascii_codes = text.codepoints
  lower_case_range = (97..122).to_a
  upper_case = (65..90).to_a
  result = ascii_codes.map do |char|
  
  if char >= 97 && char <= 122
  index_plus_shift = lower_case_range.find_index(char) + shift
   index_plus_shift > 26 ? lower_case_range[(index_plus_shift)%26].chr : lower_case_range[index_plus_shift].chr
  elsif char >= 65 && char <= 90
    index_plus_shift = upper_case.find_index(char) + shift
    index_plus_shift > 26 ? upper_case[(index_plus_shift)%26].chr  : upper_case[index_plus_shift].chr
  else
    char.chr
  end
 
  end
  result.join("")

end
