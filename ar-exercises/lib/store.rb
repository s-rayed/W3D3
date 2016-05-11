class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_or_equal_to: 0}
  validate :carry_mens_womens
  
  def carry_mens_womens
    if (mens_apparel == false && womens_apparel == false)
      errors.add(:base, "either men's or women's apparel must be true")
    end
  end

end


