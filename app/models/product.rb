class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :provider

  #Image for product
  has_attached_file :image, styles: { medium: '300x300', thumb: '50x50' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates_presence_of :codigo, :on => :create
  validates_uniqueness_of :code

  def codigo
    if code.nil?
        self.code = rand(999999999)
    end
  end

  def precio_venta
    precio = (buy_price * 2) / 12
    return precio
  end

end
