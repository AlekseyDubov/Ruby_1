# Формулы http://www.csgnetwork.com/temp2conv.html

puts "Введите значение градусов"
temp = gets.chomp # chomp Убирает все символы enter, gets считывает с клавиатуры
puts "Введите название шкалы из которой переводим (C,F,K)"
input_scale = gets.chomp
puts "Введите название шкалы в которую переводим (C,F,K)"
output_scale = gets.chomp
	if input_scale == "C"
		if output_scale == "F"
	    	F = temp.to_f * 1.8 + 32
	    	puts "Температура в Фаренгейтах: ", F
	    elsif output_scale == "K"
	    	K = temp.to_f  + 273.15
	    	puts "Температура в Кельвинах: ", K
	    elsif output_scale == "C"
	    	puts "Температура в Цельсиях: ", temp
	    else
	    	puts "Введено неверное значение"
	    end
	elsif input_scale == "K"
		if output_scale == "C"
			C = temp.to_f - 273.15
	    	puts "Температура в Цельсиях: ", C
	    elsif output_scale == "F"	
	    	F = temp.to_f * 1.8 - 459.67
	    	puts "Температура в Фаренгейтах: ", F
	    elsif output_scale == "K"
	    	puts "Температура в Кельвинах: ", temp
	    else
	    	puts "Введено неверное значение"
	    end
	elsif input_scale == "F"
		if output_scale == "C"
			C = (temp.to_f - 32) / 1.8
	    	puts "Температура в Цельсиях: ", C
	    elsif output_scale == "K"	
	    	K = (temp.to_f + 459.67) / 1.8
	    	puts "Температура в Кельвинах: ", K
	    elsif output_scale == "F"
	    	puts "Температура в Фаренгейтах: ", temp
	    else
	    	puts "Введено неверное значение"
	    end
	else
		puts "Введено неверное значение"   
	end
