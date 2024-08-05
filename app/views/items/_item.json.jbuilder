json.extract! item, :id, :recipe_id, :modifier_id, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
