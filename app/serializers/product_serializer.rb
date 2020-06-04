class ProductSerializer
  include FastJsonapi::ObjectSerializer
	attribute :id do |product|
		product.id
	end
	attribute :name do |product|
		product.name
	end

	attribute :matetrial_code do |product|
		product.matetrial_code
	end

	attribute :product_category_code do |product|
		product.product_category_code
	end

	attribute :status do |product|
		product.status ? 'Available' : 'Unavailable'
	end
 
end
