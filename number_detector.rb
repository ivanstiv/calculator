def detect_number(symbol)
  detect_number = :Roman 
    if symbol.match?(/\A[IVXCLDM]*\z/)
  	 return detect_number
elsif symbol.match?(/\A\d*\z/)
  detect_number = :Integer
  	 return detect_number
end
end
