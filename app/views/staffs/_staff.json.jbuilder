json.extract! staff, :id, :name, :dob, :role_id, :iban, :bic, :location_id, :created_at, :updated_at
json.url staff_url(staff, format: :json)
