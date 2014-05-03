puts "To what number would you like to see prime numbers up to?"
input = gets

max = input.to_i
total = 0
x = 2

while (x <= max)
	isPrime = true
	y = 2

	while (y <= (x-1))

		if ((x%y) == 0)
			isPrime = false
		end
		
		y=y+1		
	end
	
	if (isPrime == true)
		puts "#{x}\n"
	
		total = total + x
	end
	
	x=x+1
end

puts "The sum of all primes up to #{max} is: #{total}."
