# Sorting Function.
# Reads from file "sort_test.txt" and sorts the numbers found within

file_handle = File.open(File.dirname(__FILE__) + "/unsorted_random.txt", "r") or die "Unable to open file"

numbers = []

file_handle.each_line do |line|
	numbers.push(line.to_i)
end

# Crude bubble sort.  Still not done, it makes unnecessary comparisons even after the 
# array is sorted.  Sean...fix this so that it stops once it is sorted.
def bubble_sort(numbers)

	swap_count = 0
	compare_count = 0
	
	for i in 0..(numbers.length - 2)
		
		for j in 0..(numbers.length-2-i)
		
			compare_count += 1
			# Swap numbers if the second number is greater than the first
			if numbers[j] > numbers[j+1]
				temp = numbers[j+1]
				numbers[j+1] = numbers[j]
				numbers[j] = temp
				swap_count += 1
			end
		end
	end

	return compare_count, swap_count

end

# Sean........ fill this in with your algorithm.
def sean_sort(numbers)


end

puts "Original set of numbers.  Has " + numbers.length.to_s + " numbers."
puts numbers.join(", ")

compare_count, swap_count = bubble_sort(numbers)

puts "\nSorted set of numbers"
puts numbers.join(", ")
puts "Took #{compare_count} compare operations and #{swap_count} swap operations."