# Sorting Function.
# Reads from file "sort_test.txt" and sorts the numbers found within

file_handle = File.open(File.dirname(__FILE__) + "/sort_test.txt", "r") or die "Unable to open file"

numbers = []

file_handle.each_line do |line|
	numbers.push(line.to_i)
end


def bubble_sort(numbers)
	
	for i in 0..(numbers.length - 2)
		
		for j in 0..(numbers.length-2-i)
			
			if numbers[j] > numbers[j+1]
				temp = numbers[j+1]
				numbers[j+1] = numbers[j]
				numbers[j] = temp
			end
		end
	end
end


puts "Original set of numbers"
puts numbers.join(", ")

bubble_sort(numbers)

puts "\nSorted set of numbers"
puts numbers.join(", ")