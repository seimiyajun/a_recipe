class Food < ApplicationRecord
  has_many :food_materials
  has_many :materials, through: :food_materials

  accepts_nested_attributes_for :food_materials, allow_destroy: true
end