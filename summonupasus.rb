#all this program does is prints the last letter of an input string as many times as the input string has characters

puts "Welcome to the program! Please enter your input. \n 1. LastLetter \n 2. TwoOfEach"

def lastletter
	puts "This bit of the code takes the last character of a given input string and repeats it for the length of the string, dawg."
	input = gets.chomp
	output = input[input.length - 1] * input.length 
	puts output
end

def twoofeach
	#this bit of the program is the one written about in appideas.txt on lenovo
	#TODO: strings composed only of more than two repeating characters shorten to two characters, figure this out
	puts "This bit of the code takes a given input string and doubles every character in it, save the ones already doubled, pal."
	input = gets.chomp
	i = 0
	output = ""
	until i == input.length
		if input[i] != input[i + 1]
			output.concat input[i]*2
		end
		i+=1
	end
	puts output
end

input = gets.chomp

if input == '1'
	lastletter
elsif input == '2'
	twoofeach
else
	puts "Invalid input. Now you'll pay the ultimate price >:("
end
