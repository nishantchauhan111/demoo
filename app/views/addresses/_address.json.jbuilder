json.extract! address, :id, :name, :street, :landmark, :city, :state, :country, :pincode, :active, :created_at, :updated_at
json.url address_url(address, format: :json)
