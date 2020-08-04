json.name product.name
json.permalink product.permalink
json.available_on product.available_on

json.parcels do
  parcels = product.parcels
  parcels = parcels.in_stock_whenever unless show_unavailable

  json.partial! 'parcels/parcel', collection: parcels, as: :parcel

end
