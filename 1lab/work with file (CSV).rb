def readfile  
    fh = open "file.csv"
    x = []
    while (line = fh.gets) 
       x.insert(x.length, line.to_f) 
    end
    fh.close
    return x
end

def metod
	puts " 1. Максимальное 2. Минимальное 3. Среднее значение 4. Исправленная дисперсия"
	x = readfile()
	disp = 0
   	value = gets.to_i
	    if value == 1
	    	puts x.max
	    elsif value == 2
	    	puts x.min
	    elsif value == 3 
	    	puts x.reduce(:+)
	    elsif value == 4
	    	avg = x.reduce(:+)/x.length
	    	x.each do |a|
	    		disp += (a - avg)**2
	    	end
	    	puts (disp)/(x.length - 1)
	    end
end

metod()
