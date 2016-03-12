json.array!(@locations) do |location|
  json.extract! location, :id, :name, :city, :state, :zip, :street, :description, :email, :phone, :start_time, :end_time, :company_id
  json.url location_url(location, format: :json)
end
