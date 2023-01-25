def calculate(x,y,operation)
  case operation
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

def calculate2(x,y)
  puts "сложение " + (x+y).to_s
  puts "вычитание " + (x-y).to_s
  puts "умножение " + (x*y).to_s
  puts "деление с остатком " + (x/y.to_f).round(3).to_s
  puts "результат остатка от деления " + (x%y).to_s
  puts "возведение одного числа в степень " + (x**y).to_s
  puts "модуль суммы этих чисел " + (x+y).abs.to_s
  puts "корень " + Math.sqrt(x+y).round(3).to_s
  puts "логарифм " + Math.log(x+y).round(3).to_s
end

print("Введите два числа через пробел: ")
input_array = gets.split
x = input_array[0].to_i
if input_array.size > 2
  y = input_array[2].to_i
  operation = input_array[1]
    puts calculate(x,y,operation)
else
  y = input_array[1].to_i
  calculate2(x,y)
end
