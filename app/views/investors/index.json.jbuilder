json.array!(@investors) do |investor|
  json.extract! investor, :id, :full_name, :address, :zip_code, :town, :country, :fiscal_number
  json.url investor_url(investor, format: :json)
end
