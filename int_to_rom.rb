NUMERAL_HASH = {
  1 => "I",
  4 => "IV",
  5 => "V",
  9 => "IX",
  10 => "X",
  40 => "XL",
  50 => "L",
  90 => "XC",
  100 => "C",
  400 => "CD", 
  500 => "D",
  900 => "CM",
  1000 => "M" 
}

def convert_to_old_roman number_to_convert
  reversed_numeral_hash = Hash[NUMERAL_HASH.to_a.reverse]
  answer = ""
  reversed_numeral_hash.each do |num, numeral|
    if number_to_convert >= num
      num_numerals, number_to_convert = number_to_convert.divmod(num)
      num_numerals.times { answer += numeral }
    end
  end
  answer
end