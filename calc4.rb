require "./number_detector"
require "./int_to_rom"
require "./roman_to_integer"
def calculate2(x,y,sign)
  case sign
    when "+"
      x+y
    when "-"
      x-y
    when "*"
      x*y
    when "/"
      x/y
    end
end

def calculate3(x,y)
  operations = {
    "+" => ['Сложение: ', x+y],
    "-" => ['Вычитание: ', x-y],
    "*" => ['Умножение: ', x*y],
    "/" => ['Деление нацело: ', x/y],
    "&" => ['Остаток от деления: ', x/y],
    "^" => ['Возведение в степень: ', x**y],
    "%" => ['Остаток от процента: ', x*y/100],
    "++" => ['Модуль суммы этих чисел: ', (x+y).abs],
    "//" => ['Корень: ', Math.sqrt(x+y).round(3)],
    "#" =>  ['Логарифм: ', Math.log(x+y).round(3)]
  }
  operations.each do |k,v|
    puts v[0]+v[1].to_s
  end
end

print("Введите два числа через пробел: ")
array = gets.split
type = detect_number(array[0])
x = type == :roman ? roman_to_int(array[0]) : array[0].to_i 
if array.size > 2
  y = type == :roman ? roman_to_int(array[2]) : array[2].to_i 
  sign = array[1]
  result = calculate2(x,y,sign)
  puts type == :roman ? convert_to_old_roman(result) : result
else
  y = array[1].to_i
  calculate3(x,y)
end

