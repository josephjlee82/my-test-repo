isPrime = 1

total = 0

while (isPrime <= 50)

	x = false
	
	w = (isPrime - 1)

	y = 2
	
	while (y <=w)
		
		if ((isPrime%y) == 0)
		
			x = true
	
		end
		
		y = y + 1
		
	end
	
	if (x == false)
	
		puts isPrime
	
		total = total + isPrime
	
	end
	
	isPrime = isPrime + 1

end

puts total

