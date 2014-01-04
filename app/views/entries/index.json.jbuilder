json.array!(@entries) do |entry|
  json.extract! entry, :id, :name, :text, :latitude, :longitude
  json.url entry_url(entry, format: :json)
end
