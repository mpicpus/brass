class Parcel < ApplicationRecord
  belongs_to :product

  scope :available, -> { where('parcels.available_on < ?', Time.current) }
  scope :in_stock_now, -> { available.where('stock_in_units > 0') }
  scope :in_stock_whenever, -> { available.in_stock.where('parcels.available_on IS NOT NULL') }

end
