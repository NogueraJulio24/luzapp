class AddSell6ToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :sell6, :integer
  end
end
