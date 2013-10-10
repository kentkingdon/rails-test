class ProductsController < ApplicationController
	respond_to :json
	
	def index
		@products = Product.all
		respond_with @products
	end

	def show
		@product = Product.find params[:id]
		respond_with @product
	end

	def update
		@prouct = Product.find params[:id]

		@product.update_attributes(
			name: params[:name],
			description: params[:description],
			price: params[:price] 
		)
	end


end