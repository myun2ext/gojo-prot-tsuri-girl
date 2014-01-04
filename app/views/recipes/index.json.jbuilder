json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :wroted_by, :howtomake
  json.url recipe_url(recipe, format: :json)
end
