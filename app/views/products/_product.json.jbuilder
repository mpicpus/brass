json.name product.name
json.permalink product.permalink
json.available_on product.available_on

json.parcels do
  json.in_stock_now do
    json.partial! 'parcels/parcel', collection: product.parcels.in_stock_now, as: :parcel
  end

  json.in_stock_in_the_future do
    json.partial! 'parcels/parcel', collection: product.parcels.in_stock_in_the_future, as: :parcel
  end
end
