class Material < ApplicationRecord
  has_many :food_materials, dependent: :destroy
  has_many :foods, through: :food_materials
end
