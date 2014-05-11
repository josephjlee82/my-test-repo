
puts Dir.pwd

#File.open(File.dirname(__FILE__) + '/text.txt')

f = File.open("/Users/joelee/Forks/my-test-repo/sean-code/joe-developed/sort_test.txt", "r") or die "Unable to open file"

file_contents = []

f.each_line do |line|
	file_contents.push(line)
end

file_contents.each do |line|
	puts line
end
