class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :code
      t.integer :buy_price
      t.string :description
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
