class FoodMaterial < ApplicationRecord
  belongs_to :food, optional: true
  belongs_to :material, optional: true
end
