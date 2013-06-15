class BuzzFizz
attr_accessor :num
	def initialize num
		@num = num
		to_integer(@num)
	end

	def to_integer(num)
		num = num.to_i
		num > 1000 ? num = 1000 :
		num < 10 ? num = 10 :
		num
		create_array(num)
	end

	def create_array(a)
		buzzfizz_array = Array(1..a)
		check(buzzfizz_array)
	end

	def check(bf_array)
		bf_array.each do |num|
			case
			when buzzfizz(num)
				puts "buzzfizz"
			when divide_or_include?(num,3)
				puts "buzz"
			when divide_or_include?(num,7)
				puts "fizz"
			else
				puts num
			end
		end
	end

	def buzzfizz(num)
		if 	product_of?(num) or
			include_3_and_7?(num) or
		  	divide_and_include?(num,3,7) or
		   	divide_and_include?(num,7,3) then
			return true
		end
	end

	def product_of?(num)
		(num % 21).zero?
	end

	def include_3_and_7?(num)
		(num.to_s.include? '3' and num.to_s.include? '7')
	end


	def divide_or_include?(num, a)
		if (num % a).zero? or num.to_s.include? a.to_s then
			return true
		end
	end

	def divide_and_include?(num, a, b)
		if ((num % a).zero? and num.to_s.include? b.to_s) then
			return true
		end
	end

end



BuzzFizz.new(200)
