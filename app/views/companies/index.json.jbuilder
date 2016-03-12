json.array!(@companies) do |company|
  json.extract! company, :id, :name, :email, :website, :city, :state, :zip, :street, :phone, :description
  json.url company_url(company, format: :json)
end
