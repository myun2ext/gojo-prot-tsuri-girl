json.array!(@entry_images) do |entry_image|
  json.extract! entry_image, :id, :entry_id, :text
  json.url entry_image_url(entry_image, format: :json)
end
