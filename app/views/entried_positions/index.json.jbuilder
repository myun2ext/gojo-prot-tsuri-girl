json.array!(@entried_positions) do |entried_position|
  json.extract! entried_position, :id, :entry_id, :latitude, :longitude, :label, :owner_id
  json.url entried_position_url(entried_position, format: :json)
end
