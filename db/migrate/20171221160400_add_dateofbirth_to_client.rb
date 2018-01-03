class AddDateofbirthToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :dateofbirth, :date
  end
end
