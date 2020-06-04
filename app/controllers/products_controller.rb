class ProductsController < ApplicationController

	def index
		@product = Product.new
		@products = Product.all
	end

	def import
		Product.import_csv(params["file"])
		redirect_to root_path
	end

	def get_product_data_api
	  	list_product = Product.where(status: true)
	    product_serializer = ProductSerializer.new(list_product)
	    render json: {
	          status: 200,
	          data: product_serializer.serializable_hash[:data].map{ |data| data[:attributes]}
	    }
	end

end
