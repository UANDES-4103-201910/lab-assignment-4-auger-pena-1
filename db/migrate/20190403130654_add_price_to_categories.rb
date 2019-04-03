class AddPriceToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :price, :integer
  end
end
