def fizz_buzz(n)
	if n % 15 == 0
		'Fizz'
	elseif n % 5 == 0
		'Buzz'
	elseif n % 3 == 0
		'FizzBuzz'
	else
		n.to_s
	end
end


