class AddSell12ToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :sell12, :integer
  end
end
