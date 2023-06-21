def detect_number(symbol)
    if symbol.match?(/\A[IVXCLDM]*\z/)
       :Roman
    elsif symbol.match?(/\A\d*\z/)
       :Integer
end
end
