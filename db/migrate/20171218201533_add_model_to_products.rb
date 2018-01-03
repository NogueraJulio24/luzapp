class AddModelToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :model, :string
  end
end
