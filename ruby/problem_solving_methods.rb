
def search_array(array,integer)
	index = 0
	while index < array.length 
		if array[index]==integer
			return index
		else
			nil
		end
			index += 1
	end
end
arr = [42, 89, 23, 1]
p search_array(arr, 1)

def fib(number)
	array = [0,1]
	while array.length < number
		array[array.length] = array[-2]+array[-1]
	end
	return array

	end
fib(6)

fib(100)[-1]

