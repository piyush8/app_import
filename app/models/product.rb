class Product < ApplicationRecord
	require 'csv'

	def self.import_csv(file)
		CSV.foreach(file.path, headers: true) do |row|
			product_row = row.to_h
			product_material = Product.find_by(matetrial_code: product_row['material_code'])
			if !product_material.present? && row["name"] != '' && row["product_category_code"] != ''
				Product.find_or_create_by(name: product_row['name'], matetrial_code: product_row['material_code'], product_category_code: product_row['product_category_code'], status: product_row['status'])
			end
		end
	end
end
