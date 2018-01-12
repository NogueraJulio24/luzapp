class AddSell18ToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :sell18, :integer
  end
end
