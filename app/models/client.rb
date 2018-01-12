class Client < ApplicationRecord

  has_attached_file :cedula_frente, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :cedula_frente, content_type: /\Aimage\/.*\z/

  has_attached_file :cedula_reverso, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :cedula_reverso, content_type: /\Aimage\/.*\z/

  def complete_name
      return self.name + " " + self.lastname
  end

  def age
    now = Time.now.to_date
    now.year - dateofbirth.year - (dateofbirth.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def dbo_today
    now = Time.now.to_date
    if dateofbirth.month == now.month && dateofbirth.day == now.day
      return self
    end
  end
end
