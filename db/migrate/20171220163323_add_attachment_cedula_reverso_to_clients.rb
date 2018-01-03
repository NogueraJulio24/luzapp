class AddAttachmentCedulaReversoToClients < ActiveRecord::Migration[5.1]
  def self.up
    change_table :clients do |t|
      t.attachment :cedula_reverso
    end
  end

  def self.down
    remove_attachment :clients, :cedula_reverso
  end
end
