class Parcel < ApplicationRecord
  belongs_to :product

  scope :in_stock, -> { where('stock_in_units > 0') }
  scope :in_stock_whenever, -> { in_stock.where('parcels.available_on IS NOT NULL') }
  scope :in_stock_now, -> { in_stock.where('parcels.available_on < ?', Time.current) }
  scope :in_stock_in_the_future, -> { in_stock.where('parcels.available_on > ?', Time.current) }
end
