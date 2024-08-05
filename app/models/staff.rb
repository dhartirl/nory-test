class Staff < ApplicationRecord
  belongs_to :role
  belongs_to :location
end
