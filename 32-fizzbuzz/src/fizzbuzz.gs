namespace FizzBuzz
	class FizzBuzz:Object
		construct(size:int)
			_size = size

		prop _size:int

		def result(): string
			var result = ""
			for var i = 1 to _size
				if result.length > 0
					result += " "
				if i % 3 == 0 and i % 5 == 0
					result += "fizzbuzz"
				else if i % 3 == 0
					result += "fizz"
				else if i % 5 == 0
					result += "buzz"
				else
					result += i.to_string()

			return result
