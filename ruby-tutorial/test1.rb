#!/usr/bin/ruby -w

puts "Hello, World!"

def quadruple num
	num * 4
end

puts quadruple 2


puts 'Hello'.class
puts 5.class
puts nil.class

total = 0
50.times {
	|x| total += x
}
puts total


words = ['hello', 'goodbye', 'seeya']

words.each { |word| puts "these words: #{word}"}


def is_it_weekend(day)
	if day == 'sat' || day == 'sun'
		puts true
	else
		puts false
	end
end

is_it_weekend('sun')
is_it_weekend('mon')
is_it_weekend('sat')

puts "abcdefg"[2,3]


x = ['monday', 'tuesday', 'wednesday']
y = x.map {|day| "weekday: #{day}"}
puts y.inspect


x = %w[frank al dan]
puts x

puts x.inject{ |memo, val| "#{memo}.. #{val}"}