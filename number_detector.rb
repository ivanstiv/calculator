def detect_number(symbol)
  if symbol.match?(/\A[IVXCLDM]*\z/)
    :roman
  elsif symbol.match?(/\A\d*\z/)
    :integer
  end
end
