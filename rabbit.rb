puts "Введите количество месяцев:"
n = gets.chomp

fib1 = 1
fib2 = 1
i = 2

if n.to_i == 1 or n.to_i == 2
	print "Количество пар кроликов будет:\t", 1
else
	while i < n.to_i
		fib_sum = fib2 + fib1
    	fib1 = fib2
    	fib2 = fib_sum
    	i += 1
    end
    print "Количество пар кроликов будет:\t", fib_sum
end
