puts 1

old = 0

current = 1

y = 1

total = current

while (y <= 5000) #and current < 3000)

puts (current + old)

v = old

old = current

total = total + current + v

current = current + v

y = y + 1

end

puts (total / y)