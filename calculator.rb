print("Введите первое число: ")
x=gets.chomp().to_i
print("Введите второе число: ")
y=gets.chomp().to_i
puts "сложение " + (x+y).to_s
puts "вычитание " + (x-y).to_s
puts "умножение " + (x*y).to_s
puts "деление нацело " + (x/y).to_s
puts "деление с остатком " + (x/y.to_f).to_s
puts "результат остатка от деления " + (x%y).to_s
puts "возведение одного числа в степень " + (x**y).to_s
puts "модуль суммы этих чисел " + (x+y).abs.to_s
puts "корень " + Math.sqrt(x+y).round(3).to_s
puts "логарифм " + Math.log(x+y).round(3).to_s