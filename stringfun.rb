#this program does funny stuff with strings
#TODO: add file io to output funky strings to some txt file, add inputmanager to reduce duplication
#note: kevin t. ackerman is the guy with the top 10 ytps of the month thing
#note: i am kevin t. hackerman

$output = File.new 

def lastletter
	puts "This bit of the code takes the last character of a given input string and repeats it for the length of the string, dawg."
	input = gets.chomp
	output = input[input.length - 1] * input.length 
	puts output
	main
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
	main
end

def newlines
	#this bit of the code takes each character and prints it on a new line
	puts "This bit of the code takes each character of the input string and writes it on a new line"
	input = gets.chomp
	output = ""
	i = 0
	until i == input.length
		output.concat input[i]
		output.concat "\n"
		i+=1
	end
	puts output
	main
end

def main
	puts "Welcome to the program! Please enter your input. \n 1. LastLetter \n 2. TwoOfEach \n 3. NewLines"
	input = gets.chomp
	if input == '1'
		lastletter
	elsif input == '2'
		twoofeach
	elsif input == '3'
		newlines
	elsif input == 'end'
		puts "Goodbye grungo"
		abort
	else
		puts "Invalid input. Now you'll pay the ultimate price >:("
	end
end

main