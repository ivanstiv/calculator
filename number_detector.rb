def is_roman(string)
	is_roman = "Roman"
  if string.match?(/\A[IVXCLDM]*\z/)
  	return is_roman
  else
  	is_roman = "Integer"
  	 string.match?(/\A\d*\z/)
  	 return is_roman
end
end

