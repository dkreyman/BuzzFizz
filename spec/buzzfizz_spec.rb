require 'spec_helper'

describe BuzzFizz do
		before :each do
			@buzzfizz = BuzzFizz.new(30000)
		end

	describe "#initialize" do
		it "takes a pramater and returns a buzzfizz object" do
			@buzzfizz.should be_an_instance_of BuzzFizz
		end
	end

	describe "#to_integer" do
		it "ensures num is an integer" do
			@buzzfizz.num.should be_a_kind_of(Integer)
		end
	end

	describe "#create_array" do
		it "creates and array between one and a given number" do
			array = @buzzfizz.create_array(10)
			array.count.should be 10
		end
	end

	describe "#product_of?" do
		it "returns true if num is a product of 21" do
			@buzzfizz.product_of?(42).should == true
		end

		it "does not return true if num is not a product of 21" do
			@buzzfizz.product_of?(41).should_not == true
		end
	end

	describe "#include_3_and_7?" do
		it "returns true if num includes 3 and 7" do
			@buzzfizz.include_3_and_7?(37).should == true
		end

		it "does not return true if num does not include 3 and 7" do
			@buzzfizz.include_3_and_7?(36).should_not == true
		end
	end

	describe "#divide_or_include?" do
		it "returns true if num is divisible by a given number" do
			@buzzfizz.divide_or_include?(60,6).should == true
		end

		it "returns true if num includes a given number" do
			@buzzfizz.divide_or_include?(31,3).should == true
		end

		it "does not return true if num is not divisible by a given number" do
			@buzzfizz.divide_or_include?(19,3).should_not == true
		end

		it "does not return true if num does not include a given number" do
			@buzzfizz.divide_or_include?(41,3).should_not == true
		end
	end

	describe "#divide_and_include" do
		it "returns true if num is divisible by a given number and includes another given number" do
			@buzzfizz.divide_and_include?(27,3,7).should == true
		end

		it "does not return true if num is not divisible by a given number or does not includes another given number" do
			@buzzfizz.divide_and_include?(37,3,7).should_not == true
		end
	end
end
