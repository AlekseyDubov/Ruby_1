puts "Введите слово для проверки на палиндром"
text = gets.chomp
if text == text.reverse
	puts "Слово является палиндромом"
else
	puts "Слово не является палиндромом"
end