require 'spec_helper'

describe Product do
	it "should not allow duplicates" do
		@product1 = Product.create(name: "Foo", description: "Bar", price: 200)
		@product2 = Product.create(name: "Foo", description: "Bar", price: 200)

		Product.count.should == 1
	end

	describe "price" do
		it "should not be negative" do
			@product = Product.create(name: "Foo", description: "Bar", price: -1)
			Product.count.should == 0
		end
	end
end
