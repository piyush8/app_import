class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :matetrial_code
      t.string :product_category_code
      t.boolean :status

      t.timestamps
    end
  end
end
