start_number = 1
final_number = 100

while(start_number <= final_number)
	if (start_number % 3 == 0)
		puts "Fizz"
	elsif (start_number % 5 == 0)
		puts "Buzz"
	elsif(start_number % 3 == 0) && (start_number % 5 == 0)
		puts "FizzBuzz"
	else
		puts start_number
	end
	start_number += 1
end
			