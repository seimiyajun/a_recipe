class CreateFoodMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :food_materials do |t|
      t.references :food, foreign_key: true
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
