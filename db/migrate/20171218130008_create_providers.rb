class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.integer :social_razon
      t.string :comercial_sector
      t.string :document_type
      t.string :document_number
      t.string :address
      t.string :email
      t.string :url

      t.timestamps
    end
  end
end
