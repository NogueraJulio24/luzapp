class AddAttachmentCedulaFrenteToClients < ActiveRecord::Migration[5.1]
  def self.up
    change_table :clients do |t|
      t.attachment :cedula_frente
    end
  end

  def self.down
    remove_attachment :clients, :cedula_frente
  end
end
