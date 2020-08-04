class Product < ApplicationRecord
  validates :permalink, uniqueness: true

  has_many :parcels

  scope :available, -> { joins(:parcels)
                           .where('products.available_on IS NOT NULL AND products.available_on < ? AND
                                   parcels.stock_in_units IS NOT NULL and parcels.stock_in_units > ?', Time.current, 0)
                           .distinct }

  def to_json_product
    self.slice(:id, :name, :permalink, :price, :available_on)
  end

  def price
    self[:price] || 0.0
  end
end