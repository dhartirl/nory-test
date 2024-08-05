class Modifier < ApplicationRecord
  enum mod_type: { add_ingredient: 0, allergen: 1 }
end
