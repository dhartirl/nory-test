json.extract! ingredient, :id, :name, :unit, :cost, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
